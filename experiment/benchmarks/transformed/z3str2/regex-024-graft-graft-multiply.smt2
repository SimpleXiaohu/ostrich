(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "aa") (str.to.re "bb")))))
(assert (str.in.re y (str.to.re "bb")))
(check-sat)
(get-model)