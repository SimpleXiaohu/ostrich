(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.* (str.to.re "bb")) (re.* (str.to.re "bb"))))))
(assert (str.in.re y (re.* (re.++ (str.to.re "aa") (str.to.re "aa")))))
(check-sat)
(get-model)