(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "a12")))
(assert (str.in.re y (re.+ (re.+ (re.* (str.to.re "b1"))))))
(assert (= (str.len x) (str.len y)))
(assert (= 5 12))
(check-sat)
(get-model)