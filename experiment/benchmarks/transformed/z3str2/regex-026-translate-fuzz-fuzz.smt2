(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (re.+ (str.to.re "")) (str.to.re "W")))))
(assert (str.in.re y (re.* (re.union (re.* (str.to.re "")) (str.to.re "[")))))
(assert (not (= x y)))
(assert (= (str.len x) (str.len y)))
(check-sat)
(get-model)