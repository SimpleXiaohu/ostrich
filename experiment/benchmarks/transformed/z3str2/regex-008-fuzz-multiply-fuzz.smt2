(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "abb^c")))
(check-sat)
(get-model)