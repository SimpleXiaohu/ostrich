(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.* (str.to.re "q")) (str.to.re "H")))))
(assert (= (str.len x) 3))
(assert (not (= x "HHq")))
(assert (not (= x "Hqq")))
(assert (not (= x "qHq")))
(check-sat)
(get-model)