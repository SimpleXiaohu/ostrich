(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (str.to.re "") (str.to.re "b")))))
(assert (str.in.re y (str.to.re "+")))
(assert (not (= x y)))
(assert (= (str.to.int x) (str.len y)))
(check-sat)
(get-model)