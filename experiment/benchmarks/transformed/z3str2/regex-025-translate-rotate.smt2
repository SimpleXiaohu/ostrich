(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.* (str.to.re "R")) (str.to.re "`")))))
(assert (str.in.re y (re.* (re.++ (re.* (str.to.re "R")) (str.to.re "`")))))
(assert (= (str.len x) (str.len y)))
(assert (not (= x y)))
(assert (= (str.len x) 7))
(check-sat)
(get-model)