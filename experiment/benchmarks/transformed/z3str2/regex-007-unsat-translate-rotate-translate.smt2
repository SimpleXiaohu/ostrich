(declare-const x String)
(assert (= (str.len x) 8))
(assert (str.in.re x (re.* (str.to.re """<i"))))
(assert (str.in.re x (re.* (str.to.re "zE""i"))))
(check-sat)
(get-model)