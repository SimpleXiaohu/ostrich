(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.* (str.to.re "")) (str.to.re "K")))))
(assert (str.in.re y (str.to.re "S")))
(assert (not (= x y)))
(assert (= (str.to.int x) (str.len y)))
(check-sat)
(get-model)