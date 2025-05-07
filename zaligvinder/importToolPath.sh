#!/bin/bash
tPath=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cat << EOF > "$tPath/toolconfig.json"
{
  "Binaries" : {
		"RegExSolver" : {
			"path" : "$tPath/SolverBinaries/RegExSolver/z3"
		},
		"Z3seq" : {
			"path" : "$tPath/SolverBinaries/z3seq/bin/z3"
		},
		"Z3str3" : {
				"path" : "$tPath/SolverBinaries/z3str3/z3"
		},
		"Cvc5" : {
				"path" : "$tPath/SolverBinaries/cvc5/cvc5"
		},
		"Trau" : {
				"path" : "$tPath/SolverBinaries/z3_TRAU/z3"
		},
		"Ostrich" : {
				"path" : "$tPath/SolverBinaries/Ostrich/ostrich"
		},
		"oldOstrich" : {
				"path" : "$tPath/SolverBinaries/oldOstrich/ostrich"
		},
		"Z3alpha" : {
				"path" : "$tPath/SolverBinaries/z3alpha/z3alpha.py"
		},
		"Z3noodler" : {
				"path" : "$tPath/SolverBinaries/z3noodler/z3"
		}
  }
}
EOF
