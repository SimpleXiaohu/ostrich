(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (= (str.++ x y) (str.++ m n)))
(assert (str.in.re n (str.to.re "4+$M")))
(assert (> (str.len x) (str.to.int m)))
(assert (= 1 (str.to.int n)))
(assert (= (str.len y) 2))
(check-sat)
(get-model)