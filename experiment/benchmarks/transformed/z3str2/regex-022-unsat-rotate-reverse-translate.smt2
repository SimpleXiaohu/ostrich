(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "u") (re.* (str.to.re "p"))))))
(assert (= (str.len x) 2))
(assert (not (= x "pp")))
(assert (not (= x "pu")))
(check-sat)
(get-model)