(declare-const x String)
(declare-const y String)
(assert (= x "aHm}<])/Rj5G<a76f"))
(assert (str.in.re x (str.to.re "d")))
(check-sat)
(get-model)