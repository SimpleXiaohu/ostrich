(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "dcbadcba")))
(assert (str.in.re x (re.* (str.to.re "dcba"))))
(assert (> 25 20))
(assert (< (str.len x) (str.len x)))
(check-sat)
(get-model)