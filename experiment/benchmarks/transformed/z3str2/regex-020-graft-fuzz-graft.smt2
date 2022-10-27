(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "b")))
(assert (= (str.len x) 2))
(assert (not (= x "b")))
(assert (not (= x ":?kb")))
(assert (not (= x "ax")))
(check-sat)
(get-model)