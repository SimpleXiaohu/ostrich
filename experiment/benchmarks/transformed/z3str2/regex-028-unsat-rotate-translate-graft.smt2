(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "j\\"))))
(assert (str.in.re x (str.to.re "j\\j\\jK")))
(assert (str.in.re x (re.* (re.* (str.to.re "j\\j\\")))))
(assert (> 1 (str.len x)))
(check-sat)
(get-model)