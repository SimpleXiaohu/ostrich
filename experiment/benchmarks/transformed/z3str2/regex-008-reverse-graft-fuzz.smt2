(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "3o&'")))
(check-sat)
(get-model)