(declare-const x String)
(assert (= x "H/y/yea"))
(assert (str.in.re x (re.union (str.to.re "H/y") (re.* (re.* (str.to.re "/yea"))))))
(check-sat)
(get-model)