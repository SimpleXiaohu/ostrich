(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "RnvX'\r'"))))
(assert (str.in.re y (re.* (re.+ (str.to.re "`<0Cnq}QJxZe")))))
(assert (= (str.to.int x) 4))
(assert (= (str.to.int y) 3))
(check-sat)
(get-model)