(declare-const x String)
(declare-const y String)
(assert (= x "3&nbaWh"))
(assert (str.in.re x (re.* (str.to.re ")A}>''\x0b''"))))
(check-sat)
(get-model)