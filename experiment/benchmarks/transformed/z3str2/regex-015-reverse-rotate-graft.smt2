(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "21ba")))
(assert (str.in.re y (re.* (re.* (str.to.re "21ba")))))
(assert (= 8 4))
(assert (= (str.len y) (str.len x)))
(check-sat)
(get-model)