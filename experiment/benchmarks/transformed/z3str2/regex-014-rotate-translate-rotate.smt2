(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "&b"))))
(assert (str.in.re y (re.* (str.to.re "&b"))))
(assert (= (str.len x) 2))
(assert (= (str.len y) 4))
(check-sat)
(get-model)