(declare-const x String)
(declare-const y String)
(assert (= x "aa//00aaSSgg==\\\\"))
(assert (str.in.re x (str.to.re "GGoo")))
(check-sat)
(get-model)