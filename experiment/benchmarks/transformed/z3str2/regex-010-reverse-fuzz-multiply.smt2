(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "aa"))))
(assert (str.in.re x (re.+ (str.to.re "CCll'''\x0b''\x0b'''yyaa"))))
(assert (str.in.re x (re.+ (str.to.re "--))::MMaabb'''\x0b''\x0b'''ZZ//EE..ii"))))
(check-sat)
(get-model)