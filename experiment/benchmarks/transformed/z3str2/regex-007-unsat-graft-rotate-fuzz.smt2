(declare-const x String)
(assert (= 10 (str.to.int x)))
(assert (str.in.re x (re.+ (re.* (str.to.re "Me^2b")))))
(assert (str.in.re x (str.to.re "ced")))
(check-sat)
(get-model)