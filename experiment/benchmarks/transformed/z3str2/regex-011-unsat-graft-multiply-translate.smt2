(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "CCQQpp(("))))
(assert (str.in.re y (str.to.re "CCQQpp((")))
(assert (= 12 (str.len x)))
(check-sat)
(get-model)