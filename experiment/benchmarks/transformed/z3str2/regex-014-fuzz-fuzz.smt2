(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re ""))))
(assert (str.in.re y (re.+ (str.to.re "ap"))))
(assert (= (str.to.int x) 0))
(assert (= (str.len y) 7))
(check-sat)
(get-model)