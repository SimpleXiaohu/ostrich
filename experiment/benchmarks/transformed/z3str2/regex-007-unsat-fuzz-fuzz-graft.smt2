(declare-const x String)
(assert (= 0 (str.len x)))
(assert (str.in.re x (re.+ (str.to.re "O"))))
(assert (str.in.re x (str.to.re "8C2j#Ls")))
(check-sat)
(get-model)