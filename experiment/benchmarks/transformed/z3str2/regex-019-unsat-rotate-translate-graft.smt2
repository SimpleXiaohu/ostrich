(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "F")))
(assert (= (str.len x) 5))
(assert (not (= x "FFFFF")))
(check-sat)
(get-model)