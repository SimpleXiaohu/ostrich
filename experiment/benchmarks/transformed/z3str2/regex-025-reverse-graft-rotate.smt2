(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "a") (re.* (str.to.re "b"))))))
(assert (str.in.re y (re.* (str.to.re "a"))))
(assert (= (str.len x) (str.len y)))
(assert (not (= x y)))
(assert (= 7 (str.len x)))
(check-sat)
(get-model)