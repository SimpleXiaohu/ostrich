(declare-const x String)
(assert (= x "GEoEoluGEo"))
(assert (str.in.re x (re.* (re.union (str.to.re "Eolu") (str.to.re "GEo")))))
(check-sat)
(get-model)