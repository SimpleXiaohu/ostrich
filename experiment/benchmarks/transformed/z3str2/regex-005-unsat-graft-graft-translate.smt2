(declare-const x String)
(declare-const y String)
(assert (= x "ggggggggg"))
(assert (str.in.re x (str.to.re "n)E")))
(check-sat)
(get-model)