(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "YY//"))))
(assert (str.in.re x (re.* (str.to.re "YY//YY//"))))
(assert (str.in.re x (re.* (str.to.re "YY//YY//YYVV"))))
(check-sat)
(get-model)