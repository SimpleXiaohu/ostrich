(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "{*9wfR")))
(check-sat)
(get-model)