(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "y#"))))
(assert (str.in.re x (re.+ (str.to.re "K,TzDDm<"))))
(assert (str.in.re x (re.* (str.to.re "K%L/wiKi"))))
(assert (> (str.len x) 2))
(check-sat)
(get-model)