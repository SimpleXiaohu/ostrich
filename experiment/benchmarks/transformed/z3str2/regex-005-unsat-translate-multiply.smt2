(declare-const x String)
(declare-const y String)
(assert (= x "oooooooooooooooooo"))
(assert (str.in.re x (re.* (re.* (str.to.re "^^DDww")))))
(check-sat)
(get-model)