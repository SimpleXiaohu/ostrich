(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "dcZ"))))
(assert (str.in.re x (str.to.re "djykL;q=ad")))
(assert (> (str.len x) 7))
(assert (< 45 (str.to.int x)))
(check-sat)
(get-model)