(declare-const x String)
(assert (= (str.len x) 0))
(assert (str.in.re x (re.+ (str.to.re "O"))))
(assert (str.in.re x (re.* (str.to.re "8C2j#Ls"))))
(check-sat)
(get-model)