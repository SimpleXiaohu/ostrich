(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "abcG]")))
(assert (str.in.re y (re.+ (str.to.re "bd"))))
(assert (= (str.len x) 10))
(check-sat)
(get-model)