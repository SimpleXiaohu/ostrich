(declare-const x String)
(declare-const y String)
(assert (= x ""))
(assert (str.in.re x (re.* (str.to.re "'' ''u_W7"))))
(check-sat)
(get-model)