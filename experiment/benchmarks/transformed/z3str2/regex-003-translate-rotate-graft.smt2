(declare-const x String)
(assert (= x "'''\n'''`J_I'''\n'''`'''\n'''`J"))
(assert (str.in.re x (re.* (str.to.re "_I'''\n'''`"))))
(check-sat)
(get-model)