(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "bb") (str.to.re "bb")))))
(assert (str.in.re y (re.* (re.++ (re.* (str.to.re "aa")) (re.* (str.to.re "aa"))))))
(check-sat)
(get-model)