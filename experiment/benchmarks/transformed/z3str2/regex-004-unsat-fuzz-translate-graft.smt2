(declare-const x String)
(assert (= x "Y'' ''kwq"))
(assert (str.in.re x (str.to.re "'' ''")))
(check-sat)
(get-model)