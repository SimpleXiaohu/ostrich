(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "dYr'9"))))
(assert (str.in.re y (re.+ (str.to.re "dcb""eQ"))))
(assert (= (str.to.int x) 8))
(check-sat)
(get-model)