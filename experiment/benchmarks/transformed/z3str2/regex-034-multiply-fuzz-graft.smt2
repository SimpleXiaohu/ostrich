(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (= (str.++ x y) (str.++ m n)))
(assert (str.in.re n (str.to.re "a/bcK(")))
(assert (> (str.to.int x) (str.len m)))
(assert (= (str.len n) 11))
(assert (= 2 (str.to.int y)))
(check-sat)
(get-model)