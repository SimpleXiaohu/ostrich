(declare-const x String)
(assert (= (str.len x) 8))
(assert (str.in.re x (re.* (str.to.re "R/ndn"))))
(assert (str.in.re x (re.* (str.to.re "DxD'\n'Rndn"))))
(check-sat)
(get-model)