(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "8e>l")))
(assert (= 2 (str.len x)))
(check-sat)
(get-model)