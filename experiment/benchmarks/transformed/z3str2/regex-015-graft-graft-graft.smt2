(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "ab12")))
(assert (str.in.re y (str.to.re "ab12")))
(assert (= 4 (str.len x)))
(assert (= (str.len y) 8))
(check-sat)
(get-model)