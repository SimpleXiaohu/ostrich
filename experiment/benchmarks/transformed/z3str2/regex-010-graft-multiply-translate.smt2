(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "sstt")))
(assert (str.in.re x (re.* (str.to.re "ssttsstt"))))
(assert (str.in.re x (re.* (str.to.re "ssttssttssbb"))))
(check-sat)
(get-model)