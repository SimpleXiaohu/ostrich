import subprocess
import tempfile
import os
import shutil
import utils
import sys
import timer


def run(params, eq, timeout, ploc, wd):
    path = ploc.findProgram("Ostrich")
    if not path:
        raise "Ostrich Not in Path"

    (fd, smtfile) = tempfile.mkstemp(suffix=".smt2")

    # hack to get rid of (get-model), not needed for z3 and returns 1 / Error if input is unsat
    f = open(eq, "r")
    copy = open(smtfile, "w")
    for l in f:
        if "(get-model)" not in l:
            copy.write(l)

    f.close()
    copy.close()

    time = timer.Timer()
    try:
        out = (
            subprocess.check_output(
                [
                    path,
                    "+quiet",
                    "+incremental",
                    "-length=on",
                    "-inputFormat=smtlib",
                    "-timeout=" + str(timeout) + "000",
                ] + params + [smtfile],
                timeout=timeout,
            )
            .decode()
            .strip()
        )
    except subprocess.TimeoutExpired:
        return utils.Result(None, timeout * 1000, True, 1)
    except subprocess.CalledProcessError as e:
        time.stop()
        out = "Error in " + eq + ": " + str(e)
        return utils.Result(None, time.getTime_ms(), False, 1, out)
    finally:
        os.unlink(smtfile)
    time.stop()
    if "unsat" in out:
        return utils.Result(False, time.getTime_ms(), False, 1, out)
    elif "sat" in out:
        return utils.Result(
            True, time.getTime_ms(), False, 1, out, "\n".join(
                out.split("\n")[1:])
        )
    elif time.getTime() >= timeout:
        return utils.Result(None, timeout * 1000, True, 1)
    elif "unknown" in out:
        return utils.Result(None, time.getTime_ms(), False, 1, out)
    else:
        # must be an error
        return utils.Result(
            None, time.getTime_ms(), False, 1, f"Error in {eq} # stdout: {out}"
        )


def addRunner(addto):
    from functools import partial
    params = {
                "FWD":                          ["-nielsenSplitter", "+forwardPropagation", "-backwardPropagation", "-parikh"],
                "BWD":                          ["-nielsenSplitter", "-forwardPropagation", "+backwardPropagation", "-parikh"],
                "Nielsen":                      ["+nielsenSplitter", "-forwardPropagation", "-backwardPropagation", "-parikh"],
                "parikh":                       ["-nielsenSplitter", "-forwardPropagation", "-backwardPropagation", "+parikh"],
                "FWD+BWD":                      ["-nielsenSplitter", "+forwardPropagation", "+backwardPropagation", "-parikh"],
                "FWD+Nielsen":                  ["+nielsenSplitter", "+forwardPropagation", "-backwardPropagation", "-parikh"],
                "FWD+parikh":                   ["-nielsenSplitter", "+forwardPropagation", "-backwardPropagation", "+parikh"],
                "BWD+Nielsen":                  ["+nielsenSplitter", "-forwardPropagation", "+backwardPropagation", "-parikh"],
                "BWD+parikh":                   ["-nielsenSplitter", "-forwardPropagation", "+backwardPropagation", "+parikh"],
                "Nielsen+parikh":               ["+nielsenSplitter", "-forwardPropagation", "-backwardPropagation", "+parikh"],
                "FWD+BWD+Nielsen":              ["+nielsenSplitter", "+forwardPropagation", "+backwardPropagation", "-parikh"],
                "FWD+BWD+parikh":               ["-nielsenSplitter", "+forwardPropagation", "+backwardPropagation", "+parikh"],
                "FWD+Nielsen+parikh":           ["+nielsenSplitter", "+forwardPropagation", "-backwardPropagation", "+parikh"],
                "BWD+Nielsen+parikh":           ["+nielsenSplitter", "-forwardPropagation", "+backwardPropagation", "+parikh"],
                "FWD+BWD+Nielsen+parikh":       ["+nielsenSplitter", "+forwardPropagation", "+backwardPropagation", "+parikh"],
                "Eager":                        ["-nielsenSplitter", "-forwardPropagation", "-backwardPropagation", "-parikh", "+eager"],
                "Eager+FWD":                    ["-nielsenSplitter", "+forwardPropagation", "-backwardPropagation", "-parikh", "+eager"],
                "Eager+BWD":                    ["-nielsenSplitter", "-forwardPropagation", "+backwardPropagation", "-parikh", "+eager"],
                "Eager+Nielsen":                ["+nielsenSplitter", "-forwardPropagation", "-backwardPropagation", "-parikh", "+eager"],
                "Eager+parikh":                 ["-nielsenSplitter", "-forwardPropagation", "-backwardPropagation", "+parikh", "+eager"],
                "Eager+FWD+BWD":                ["-nielsenSplitter", "+forwardPropagation", "+backwardPropagation", "-parikh", "+eager"],
                "Eager+FWD+Nielsen":            ["+nielsenSplitter", "+forwardPropagation", "-backwardPropagation", "-parikh", "+eager"],
                "Eager+FWD+parikh":             ["-nielsenSplitter", "+forwardPropagation", "-backwardPropagation", "+parikh", "+eager"],
                "Eager+BWD+Nielsen":            ["+nielsenSplitter", "-forwardPropagation", "+backwardPropagation", "-parikh", "+eager"],
                "Eager+BWD+parikh":             ["-nielsenSplitter", "-forwardPropagation", "+backwardPropagation", "+parikh", "+eager"],
                "Eager+Nielsen+parikh":         ["+nielsenSplitter", "-forwardPropagation", "-backwardPropagation", "+parikh", "+eager"],
                "Eager+FWD+BWD+Nielsen":        ["+nielsenSplitter", "+forwardPropagation", "+backwardPropagation", "-parikh", "+eager"],
                "Eager+FWD+BWD+parikh":         ["-nielsenSplitter", "+forwardPropagation", "+backwardPropagation", "+parikh", "+eager"],
                "Eager+FWD+Nielsen+parikh":     ["+nielsenSplitter", "+forwardPropagation", "-backwardPropagation", "+parikh", "+eager"],
                "Eager+BWD+Nielsen+parikh":     ["+nielsenSplitter", "-forwardPropagation", "+backwardPropagation", "+parikh", "+eager"],
                "Eager+FWD+BWD+Nielsen+parikh": ["+nielsenSplitter", "+forwardPropagation", "+backwardPropagation", "+parikh", "+eager"],
                "None":                         ["-nielsenSplitter", "-forwardPropagation", "-backwardPropagation", "-parikh"]
            }
    for i in params.keys():
        addto['Ostrich-'+i] = partial(run, params[i])


if __name__ == "__main__":
    print(run(sys.argv[1], None))
