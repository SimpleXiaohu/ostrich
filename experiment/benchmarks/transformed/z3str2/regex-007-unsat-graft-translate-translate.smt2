(declare-const x String)
(assert (= 8 (str.len x)))
(assert (str.in.re x (str.to.re "ptc-")))
(assert (str.in.re x (re.* (re.* (str.to.re "cZ)Z-")))))
(check-sat)
(get-model)