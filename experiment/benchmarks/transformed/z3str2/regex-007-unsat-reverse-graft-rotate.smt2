(declare-const x String)
(assert (= 8 (str.len x)))
(assert (str.in.re x (re.* (str.to.re "dec"))))
(assert (str.in.re x (str.to.re "dcba")))
(check-sat)
(get-model)