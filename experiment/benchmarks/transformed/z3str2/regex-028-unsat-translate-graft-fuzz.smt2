(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re ""))))
(assert (str.in.re x (re.* (re.* (str.to.re "KKi")))))
(assert (str.in.re x (str.to.re "70J|.<")))
(assert (> 0 (str.len x)))
(check-sat)
(get-model)