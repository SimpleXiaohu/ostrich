(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re "''\x0b''OLS") (str.to.re "123")))))
(assert (= 11 (str.len x)))
(assert (not (= x "''\x0b''OLS123''\x0b''OLS")))
(assert (not (= x "''\x0b''OLS''\x0b''OLS123")))
(check-sat)
(get-model)