(declare-const x String)
(assert (= (str.to.int x) 13))
(assert (str.in.re x (re.+ (str.to.re "O"))))
(assert (str.in.re x (re.* (str.to.re "Vos'''\t'''"))))
(check-sat)
(get-model)