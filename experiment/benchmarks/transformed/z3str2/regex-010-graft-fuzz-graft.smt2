(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "@/k%")))
(assert (str.in.re x (str.to.re "ub&""fp")))
(assert (str.in.re x (re.+ (str.to.re "Taac"))))
(check-sat)
(get-model)