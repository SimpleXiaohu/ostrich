(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re ""))))
(assert (str.in.re x (re.* (str.to.re "pW"))))
(assert (str.in.re x (str.to.re "e;<jqA7U0tZwM1F")))
(check-sat)
(get-model)