(declare-const x String)
(declare-const y String)
(assert (= x ""))
(assert (str.in.re x (re.* (str.to.re "pW.*h'\x0b'jTj'\x0b'6"))))
(check-sat)
(get-model)