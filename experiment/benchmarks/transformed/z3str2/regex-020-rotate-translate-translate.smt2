(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.* (str.to.re "O'\n'O")) (str.to.re "W")))))
(assert (= (str.len x) 3))
(assert (not (= x "WO'\n'OO'\n'O")))
(assert (not (= x "O'\n'OWO'\n'O")))
(assert (not (= x "WWO'\n'O")))
(check-sat)
(get-model)