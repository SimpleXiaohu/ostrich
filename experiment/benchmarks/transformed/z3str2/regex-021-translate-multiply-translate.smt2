(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.* (str.to.re "//")) (str.to.re "YY")))))
(assert (= (str.len x) 4))
(check-sat)
(get-model)