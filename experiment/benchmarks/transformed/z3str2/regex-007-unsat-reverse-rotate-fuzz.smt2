(declare-const x String)
(assert (= (str.len x) 6))
(assert (str.in.re x (re.+ (str.to.re "dE@!c"))))
(assert (str.in.re x (re.+ (str.to.re "dca"))))
(check-sat)
(get-model)