(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "p[y"))))
(assert (str.in.re x (re.* (str.to.re "}p"))))
(assert (str.in.re x (re.+ (str.to.re "FlToyp"))))
(check-sat)
(get-model)