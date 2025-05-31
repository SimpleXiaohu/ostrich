import json
import sqlite3
import subprocess
import tempfile
import os
import time
from pathlib import Path
from concurrent.futures import ThreadPoolExecutor, as_completed
from abc import ABC, abstractmethod
from typing import Dict
import ostrichseq2cvc5seq
from ostrichseq2z3seq import ostrichseq2z3seq
from ostrichseq2cvc5seq import ostrichseq2cvc5seq
from collections import defaultdict


# --- Interfaces ---

class SolverInterface(ABC):
    @abstractmethod
    def convert_input(self, benchmark_path: str) -> str:
        pass

    @abstractmethod
    def parse_output(self, raw_output: str) -> Dict:
        pass

class OSTRICHSEQInterface(SolverInterface): 
    def convert_input(self, benchmark_path: str) -> str:
        with open(benchmark_path, "r") as f:
            content = f.read()
        tmp = tempfile.NamedTemporaryFile(mode="w", delete=False, suffix=".smt2")
        tmp.write(content)
        tmp.close()
        return tmp.name
    
    def parse_output(self, raw_output: str) -> Dict:
        if "unsat" in raw_output:
            return {"status": "unsat"}
        elif "error" in raw_output or "unknown" in raw_output:
            return {"status": "unknown"}
        elif "sat" in raw_output:
            return {"status": "sat"}
        else:
            return {"status": "unknown"}

class Z3Interface(SolverInterface):
    def convert_input(self, benchmark_path: str) -> str:
        with open(benchmark_path, "r") as f:
            content = f.read()
        tmp = tempfile.NamedTemporaryFile(mode="w", delete=False, suffix=".smt2")
        tmp.write(ostrichseq2z3seq(content))
        tmp.close()
        return tmp.name

    def parse_output(self, raw_output: str) -> Dict:
        if "error" in raw_output or "unknown" in raw_output:
            return {"status": "unknown"}
        elif "unsat" in raw_output:
            return {"status": "unsat"}
        elif "sat" in raw_output:
            return {"status": "sat"}
        else:
            return {"status": "unknown"}

# The input and output of CVC5
class CVC5Interface(SolverInterface):
    def convert_input(self, benchmark_path: str) -> str:
        with open(benchmark_path, "r") as f:
            content = f.read()
        tmp = tempfile.NamedTemporaryFile(mode="w", delete=False, suffix=".smt2")
        tmp.write(ostrichseq2cvc5seq(content))
        tmp.close()
        return tmp.name

    def parse_output(self, raw_output: str) -> Dict:
        if "error" in raw_output or "unknown" in raw_output:
            return {"status": "unknown"}
        elif "unsat" in raw_output:
            return {"status": "unsat"}
        elif "sat" in raw_output:
            return {"status": "sat"}
        else:
            return {"status": "unknown"}


# --- Core Functions ---

def load_solvers(json_path: str) -> Dict:
    with open(json_path) as f:
        return json.load(f)


def init_db(db_path: str):
    conn = sqlite3.connect(db_path)
    conn.execute("""
        CREATE TABLE IF NOT EXISTS results (
            solver TEXT,
            benchmark TEXT,
            status TEXT,
            time REAL
        )
    """)
    return conn


def run_solver(solver_name, solver_info, interface, benchmark_path):
    elapsed = 0.0
    time_limit = 60
    temp_path = interface.convert_input(benchmark_path)
    cmd = [solver_info["path"], *solver_info["args"], temp_path]
    start = time.time()
    try:
        result = subprocess.run(cmd, capture_output=True, text=True, timeout=time_limit)
        elapsed = time.time() - start
        # print(f"[DEBUG] Raw output:\n{result.stdout.strip()}")
        parsed = interface.parse_output(result.stdout)
        status = parsed["status"]
    except subprocess.TimeoutExpired:
        elapsed = time_limit
        status = "timeout"
    finally:
        os.remove(temp_path)
    return solver_name, benchmark_path, status, elapsed


def run_all(solvers, interfaces, benchmarks, db_path="results.db"):
    # Remove the existing database
    if os.path.exists(db_path):
        os.remove(db_path)
    
    conn = init_db(db_path)
    cur = conn.cursor()

    time_summary = defaultdict(list)

    with ThreadPoolExecutor() as executor:
        futures = []
        for solver_name, solver_info in solvers.items():
            interface = interfaces[solver_name]
            for bench in benchmarks:
                futures.append(executor.submit(run_solver, solver_name, solver_info, interface, bench))

        for future in as_completed(futures):
            solver, bench, status, elapsed = future.result()
            print(f"[{solver}] {bench} → {status}")
            cur.execute(
                "INSERT INTO results (solver, benchmark, status, time) VALUES (?, ?, ?, ?)",
                (solver, bench, status, elapsed)
            )
            time_summary[solver].append(elapsed)
            conn.commit()

    # Print summary
    print("\n=== Instance-wise Comparison ===")
    instance_summary = defaultdict(dict)
    for benchmark, solver, status in cur.execute("SELECT benchmark, solver, status FROM results"):
        instance_summary[benchmark][solver] = status

    solver_names = list(solvers.keys())

    # Header
    header = ["Benchmark"] + solver_names
    print("{:<60} {}".format(header[0], " | ".join(f"{s:^10}" for s in solver_names)))
    print("=" * (60 + 13 * len(solver_names)))

    # Rows
    for benchmark in sorted(instance_summary):
        short_name = "/".join(Path(benchmark).parts[-4:])  # last 3 folders + file
        row = [short_name]
        for solver in solver_names:
            row.append(instance_summary[benchmark].get(solver, "-"))
        print("{:<60} {}".format(row[0], " | ".join(f"{s:^10}" for s in row[1:])))

    print("\n=== Summary ===")
    for row in cur.execute("SELECT solver, status, COUNT(*) FROM results GROUP BY solver, status"):
        print(f"{row[0]}: {row[1]} × {row[2]}")

    print("\n=== Average Time per Solver ===")
    for solver, times in time_summary.items():
        avg = sum(times) / len(times) if times else 0.0
        print(f"{solver}: {avg:.2f} seconds")
    conn.close()


# --- Main Script ---

if __name__ == "__main__":
    # Get the root dir of this script
    script_root = Path(__file__).parent
    json_path = script_root / "solvers.json"
    db_path = script_root / "example.db"
    solvers = load_solvers(str(json_path))
    interfaces = {
        "Z3": Z3Interface(),
        "CVC5": CVC5Interface(),
        "OSTRICH": OSTRICHSEQInterface(),
        # Add more solvers here...
    }

    benchmark_dir = script_root / "../allbench/bench_base"
    benchmarks = [str(p) for p in Path(benchmark_dir).rglob("*.smt2")]

    run_all(solvers, interfaces, benchmarks, db_path=str(db_path))
