(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "F[12")))
(assert (str.in.re y (re.* (str.to.re "F[12"))))
(assert (= (str.len x) (str.len y)))
(assert (= 8 4))
(check-sat)
(get-model)