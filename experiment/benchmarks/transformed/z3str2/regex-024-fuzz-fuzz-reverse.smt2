(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (str.to.re "b") (re.+ (str.to.re ""))))))
(assert (str.in.re y (re.+ (re.union (re.* (str.to.re "F")) (str.to.re "")))))
(check-sat)
(get-model)