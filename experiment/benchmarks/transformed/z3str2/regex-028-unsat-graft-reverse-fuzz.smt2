(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "h["))))
(assert (str.in.re x (re.* (re.* (str.to.re "caB'\t'.Vb")))))
(assert (str.in.re x (str.to.re "J&")))
(assert (> 2 (str.len x)))
(check-sat)
(get-model)