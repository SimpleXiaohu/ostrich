(declare-const x String)
(declare-const y String)
(assert (= x "_________"))
(assert (str.in.re x (re.* (re.* (str.to.re "RyO")))))
(check-sat)
(get-model)