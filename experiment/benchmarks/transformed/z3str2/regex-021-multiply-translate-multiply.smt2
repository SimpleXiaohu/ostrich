(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.* (str.to.re "yyyy")) (str.to.re "SSSS")))))
(assert (= (str.len x) 8))
(check-sat)
(get-model)