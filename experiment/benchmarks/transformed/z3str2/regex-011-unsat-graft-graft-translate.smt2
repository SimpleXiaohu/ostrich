(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "/""E]")))
(assert (str.in.re y (str.to.re "/""E]")))
(assert (= (str.len x) 6))
(check-sat)
(get-model)