(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.* (str.to.re "H")) (str.to.re ",")))))
(assert (= (str.len x) 2))
(check-sat)
(get-model)