(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "ab"))))
(assert (str.in.re y (re.* (str.to.re "ab"))))
(assert (= 4 (str.len y)))
(assert (= 2 (str.len x)))
(check-sat)
(get-model)