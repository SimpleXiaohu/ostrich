(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "Qn<x2")))
(assert (str.in.re y (re.+ (re.* (re.* (str.to.re "2"))))))
(assert (= 4 (str.len x)))
(assert (= (str.to.int y) 1))
(check-sat)
(get-model)