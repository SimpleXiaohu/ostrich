(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.* (str.to.re "ee")) (str.to.re "'\n''\n'")))))
(assert (= (str.len x) 4))
(check-sat)
(get-model)