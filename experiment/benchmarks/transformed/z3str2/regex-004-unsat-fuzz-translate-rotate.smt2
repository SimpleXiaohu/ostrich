(declare-const x String)
(assert (= x "Y'' ''kwq"))
(assert (str.in.re x (re.++ (re.+ (re.+ (str.to.re "Y?"))) (str.to.re "'' ''"))))
(check-sat)
(get-model)