(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.* (str.to.re ")")) (str.to.re "L")))))
(assert (str.in.re y (re.* (re.++ (re.* (str.to.re ")")) (str.to.re "L")))))
(check-sat)
(get-model)