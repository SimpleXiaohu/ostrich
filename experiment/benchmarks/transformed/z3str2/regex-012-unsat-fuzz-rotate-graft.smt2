(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "12pjq")))
(assert (= (str.to.int x) 9))
(check-sat)
(get-model)