(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (re.* (str.to.re "")) (str.to.re "X")))))
(assert (str.in.re y (re.* (re.++ (re.+ (str.to.re "D")) (str.to.re "X")))))
(assert (= (str.to.int x) (str.len y)))
(assert (not (= x y)))
(assert (= (str.to.int x) 5))
(check-sat)
(get-model)