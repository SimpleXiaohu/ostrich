(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re "aabc_XXN*'\t'}J+0w") (str.to.re "12'\n''\r'UT")))))
(assert (= 4 (str.len x)))
(check-sat)
(get-model)