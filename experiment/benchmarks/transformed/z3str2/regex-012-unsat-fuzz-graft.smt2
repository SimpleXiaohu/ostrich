(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "d"))))
(assert (= (str.len x) 0))
(check-sat)
(get-model)