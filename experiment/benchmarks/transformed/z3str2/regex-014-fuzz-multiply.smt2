(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re ""))))
(assert (str.in.re y (re.+ (str.to.re "aabb"))))
(assert (= (str.len x) 2))
(assert (= (str.to.int y) 10))
(check-sat)
(get-model)