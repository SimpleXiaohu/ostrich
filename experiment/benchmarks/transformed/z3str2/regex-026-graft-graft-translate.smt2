(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "{")))
(assert (str.in.re y (re.* (re.++ (re.* (str.to.re "m")) (str.to.re "{")))))
(assert (not (= x y)))
(assert (= (str.len x) (str.len y)))
(check-sat)
(get-model)