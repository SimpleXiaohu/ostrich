(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re ""))))
(assert (str.in.re x (re.* (str.to.re "aa;;v"))))
(assert (str.in.re x (str.to.re "ababa")))
(check-sat)
(get-model)