(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "ad"))))
(assert (str.in.re y (re.* (str.to.re "6K8Vcd"))))
(assert (= (str.len x) 7))
(check-sat)
(get-model)