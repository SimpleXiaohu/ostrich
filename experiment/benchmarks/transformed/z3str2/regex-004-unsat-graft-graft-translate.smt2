(declare-const x String)
(assert (= x "/Dzqzq?"))
(assert (str.in.re x (re.union (re.* (str.to.re "zq?")) (str.to.re "/Dzq"))))
(check-sat)
(get-model)