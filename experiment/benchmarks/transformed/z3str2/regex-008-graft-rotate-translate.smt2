(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "RUd")))
(check-sat)
(get-model)