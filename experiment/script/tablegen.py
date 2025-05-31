import sqlite3, os
from collections import defaultdict

# Function to get the list of table names in the database
def get_table_names(db_path):
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()

    # Query to get all table names
    cursor.execute("SELECT name FROM sqlite_master WHERE type='table';")
    tables = cursor.fetchall()

    conn.close()
    return [table[0] for table in tables]

# Function to generate a LaTeX table in the given format
def generate_solver_comparison_table(db_path, table_name):
    # Connect to the SQLite database
    conn = sqlite3.connect(db_path)
    cursor = conn.cursor()

    # Query to get distinct solvers, status counts, and average time
    query = f"""
    SELECT solver, status, COUNT(*), AVG(time)
    FROM {table_name}
    GROUP BY solver, status
    ORDER BY solver, status;
    """
    cursor.execute(query)
    data = cursor.fetchall()

    # Organize data by solver and status, also compute average time
    solver_data = defaultdict(lambda: {"unsat": {"count": 0, "time": 0},
                                       "sat": {"count": 0, "time": 0},
                                       "unknown": {"count": 0, "time": 0},
                                       "timeout": {"count": 0, "time": 0},
                                       "total_time": 0, "total_count": 0})

    for row in data:
        solver, status, count, avg_time = row
        solver_data[solver][status]["count"] = count
        solver_data[solver][status]["time"] = avg_time
        solver_data[solver]["total_time"] += avg_time * count
        solver_data[solver]["total_count"] += count

    # Calculate the 'solved' category as the sum of sat and unsat counts
    for solver, counts in solver_data.items():
        solved_count = counts["sat"]["count"] + counts["unsat"]["count"]
        counts["solved"] = {"count": solved_count}  # Add solved category

    # Prepare LaTeX table with the requested formatting
    latex_table = """
\\centering
\\small % You can use \\footnotesize or \\scriptsize for even smaller text
\\resizebox{0.85\\linewidth}{!}{ % Adjust the table width to 85% of the page width
  \\begin{tabular}{l""" + "c" * len(solver_data) + """}
    \\toprule
    \\textbf{}       & """ + " & ".join(solver_data.keys()) + """ \\\\
    \\midrule
"""

    # Add data for each category: sat, unsat, unknown/timeout, solved
    for status in ["sat", "unsat", "solved"]:
        latex_table += f"\\textsc{{{status}}}    & "
        
        # For sat, unsat, and solved, we want to bold the largest value (the best result)
        max_value = max(solver_data[solver].get(status, {"count": 0})['count'] for solver in solver_data)
        for solver in solver_data:
            count = solver_data[solver].get(status, {"count": 0})['count']
            if count == max_value:
                latex_table += f"\\textbf{{{count}}} & "
            else:
                latex_table += f"{count} & "
        
        latex_table = latex_table.rstrip(" & ")  # Remove the last "&" for the last solver
        latex_table += " \\\\\n"
        if status != "solved":
            latex_table += "\\midrule\n"

    # Combine the unknown and timeout rows
    latex_table += f"unknown/timeout & "
    for solver in solver_data:
        combined_count = solver_data[solver]["unknown"]["count"] + solver_data[solver]["timeout"]["count"]
        # Bold the best result for the combined row (minimum is better)
        min_value = min(solver_data[solver]["unknown"]["count"], solver_data[solver]["timeout"]["count"])
        if combined_count == min_value:
            latex_table += f"\\textbf{{{combined_count}}} & "
        else:
            latex_table += f"{combined_count} & "
    
    latex_table = latex_table.rstrip(" & ")
    latex_table += " \\\\\n"
    

    latex_table += "\\bottomrule\n"
    latex_table += "  \\end{tabular} %\n"
    latex_table += "}\n"

    # Close the database connection
    conn.close()

    return latex_table


# Example usage
# The root path of this script 
current_dir = os.path.dirname(os.path.abspath(__file__))
db_path = f"{current_dir}/example.db"  # Path to your SQLite database file

# Get all table names from the database
table_names = get_table_names(db_path)
print("Available Tables:", table_names)

# You can choose the table manually or loop over them
for table_name in table_names:
    print(f"\nGenerating table for: {table_name}")
    latex_table = generate_solver_comparison_table(db_path, table_name)
    print(latex_table)
