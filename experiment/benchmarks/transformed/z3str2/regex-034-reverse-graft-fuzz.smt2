(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (= (str.++ y x) (str.++ n m)))
(assert (str.in.re n (str.to.re "rDQ'\t'")))
(assert (> (str.len x) (str.len m)))
(assert (= (str.len n) 1))
(assert (= 1 (str.to.int y)))
(check-sat)
(get-model)