(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.++ (str.to.re "11;;ii2233") (str.to.re "ccww")) (str.to.re "BBAA")))))
(assert (= 4 (str.to.int x)))
(check-sat)
(get-model)