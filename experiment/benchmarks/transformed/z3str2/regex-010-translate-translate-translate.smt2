(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "/Y"))))
(assert (str.in.re x (re.* (str.to.re "/Y/Y"))))
(assert (str.in.re x (re.* (str.to.re "/Y/Y/y"))))
(check-sat)
(get-model)