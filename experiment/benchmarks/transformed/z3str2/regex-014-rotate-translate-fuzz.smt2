(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "|b"))))
(assert (str.in.re y (re.+ (str.to.re "yp"))))
(assert (= (str.len x) 2))
(assert (= (str.len y) 1))
(check-sat)
(get-model)