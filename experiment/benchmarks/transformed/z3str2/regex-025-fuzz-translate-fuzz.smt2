(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (re.* (str.to.re "")) (str.to.re "")))))
(assert (str.in.re y (re.+ (re.union (re.* (str.to.re "")) (str.to.re "'\x0b'")))))
(assert (= (str.to.int x) (str.len y)))
(assert (not (= x y)))
(assert (= (str.len x) 3))
(check-sat)
(get-model)