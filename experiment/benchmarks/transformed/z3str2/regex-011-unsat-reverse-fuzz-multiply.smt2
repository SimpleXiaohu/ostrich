(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "ddSSaa"))))
(assert (str.in.re y (re.+ (str.to.re "==VVbb"))))
(assert (= (str.to.int x) 20))
(check-sat)
(get-model)