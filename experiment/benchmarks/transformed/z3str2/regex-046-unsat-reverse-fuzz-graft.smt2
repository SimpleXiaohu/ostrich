(declare-const x String)
(assert (str.in.re x (str.to.re "d")))
(assert (> (str.to.int x) 0))
(check-sat)