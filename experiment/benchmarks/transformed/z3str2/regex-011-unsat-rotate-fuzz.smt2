(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "abcd"))))
(assert (str.in.re y (re.* (str.to.re "bd"))))
(assert (= (str.len x) 3))
(check-sat)
(get-model)