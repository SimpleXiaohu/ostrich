(declare-const x String)
(assert (= (str.len x) 8))
(assert (str.in.re x (str.to.re "i,V")))
(assert (str.in.re x (str.to.re "kTiV")))
(check-sat)
(get-model)