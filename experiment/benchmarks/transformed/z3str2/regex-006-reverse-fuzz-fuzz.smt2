(declare-const x String)
(declare-const y String)
(assert (= x "'\n'jbn{ik(^2""i"))
(assert (str.in.re x (re.+ (re.* (str.to.re "*pBp")))))
(check-sat)
(get-model)