(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "23") (str.to.re "b!)d")))))
(assert (= 6 (str.len x)))
(check-sat)
(get-model)