(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "abcd")))
(assert (= 5 (str.len x)))
(check-sat)
(get-model)