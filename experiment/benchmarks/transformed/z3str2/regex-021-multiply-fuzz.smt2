(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (re.+ (str.to.re "a")) (str.to.re "u")))))
(assert (= (str.len x) 3))
(check-sat)
(get-model)