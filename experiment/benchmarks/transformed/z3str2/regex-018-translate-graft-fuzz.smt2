(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "1.'\t'")))
(assert (= (str.to.int x) 1))
(assert (not (= x "(8Da")))
(check-sat)
(get-model)