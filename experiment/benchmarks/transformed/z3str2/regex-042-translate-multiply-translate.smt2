(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.++ (str.to.re "'\t''\t'") (re.* (str.to.re "**")))))
(assert (str.in.re x (re.++ (str.to.re "'\t''\t'") (re.++ (re.* (str.to.re "**")) (re.* (str.to.re "EE"))))))
(assert (= 6 (str.len x)))
(check-sat)
(get-model)