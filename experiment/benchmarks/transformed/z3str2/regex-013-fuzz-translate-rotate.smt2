(declare-const x String)
(declare-const y String)
(assert (str.in.re y (re.+ (re.+ (str.to.re "@Ka;i")))))
(assert (= (str.to.int y) 12))
(check-sat)
(get-model)