(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re "vg5f") (re.++ (str.to.re "3") (str.to.re "L"))))))
(assert (= 1 (str.len x)))
(check-sat)
(get-model)