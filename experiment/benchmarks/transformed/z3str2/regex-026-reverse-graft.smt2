(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "b") (re.* (str.to.re "a"))))))
(assert (str.in.re y (re.* (str.to.re "b"))))
(assert (not (= x y)))
(assert (= (str.len x) (str.len y)))
(check-sat)
(get-model)