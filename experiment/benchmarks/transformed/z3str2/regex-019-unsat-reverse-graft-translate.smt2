(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "Z")))
(assert (= (str.len x) 5))
(assert (not (= x "ZZZZZ")))
(check-sat)
(get-model)