(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (= (str.++ x y) (str.++ m n)))
(assert (str.in.re n (re.+ (str.to.re "<=abc"))))
(assert (> (str.len x) (str.to.int m)))
(assert (= 12 (str.to.int n)))
(assert (= 0 (str.len y)))
(check-sat)
(get-model)