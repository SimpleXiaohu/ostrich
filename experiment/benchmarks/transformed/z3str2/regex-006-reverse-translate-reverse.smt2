(declare-const x String)
(declare-const y String)
(assert (= x "LqSLqS"))
(assert (str.in.re x (re.* (re.* (str.to.re "LqS")))))
(check-sat)
(get-model)