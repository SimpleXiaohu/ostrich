(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "32i;1"))))
(assert (= (str.to.int x) 2))
(check-sat)
(get-model)