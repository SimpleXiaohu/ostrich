(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "SS") (re.* (str.to.re "yy"))))))
(assert (= (str.len x) 4))
(check-sat)
(get-model)