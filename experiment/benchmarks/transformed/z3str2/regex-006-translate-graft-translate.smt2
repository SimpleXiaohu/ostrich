(declare-const x String)
(declare-const y String)
(assert (= x "w' '|w' '|"))
(assert (str.in.re x (str.to.re "w' '|")))
(check-sat)
(get-model)