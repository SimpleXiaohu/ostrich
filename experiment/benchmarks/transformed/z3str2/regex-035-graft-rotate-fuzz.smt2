(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re (str.++ x y) (str.to.re "a$_1")))
(check-sat)
(get-model)