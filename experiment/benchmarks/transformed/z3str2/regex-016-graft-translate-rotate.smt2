(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "Rf''\r''}")))
(assert (= (str.len x) 11))
(assert (not (= x "Rf''\r''}123Rf''\r''}")))
(assert (not (= x "Rf''\r''}Rf''\r''}123")))
(check-sat)
(get-model)