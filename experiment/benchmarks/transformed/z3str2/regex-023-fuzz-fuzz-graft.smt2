(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "t"))))
(assert (> 0 (str.to.int x)))
(check-sat)
(get-model)