(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (re.+ (str.to.re "l")) (str.to.re "'\n'")))))
(assert (str.in.re y (re.+ (re.union (re.+ (str.to.re "QuQ")) (str.to.re "XpP")))))
(check-sat)
(get-model)