(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (re.* (str.to.re "")) (str.to.re "b")))))
(assert (> 0 (str.to.int x)))
(check-sat)
(get-model)