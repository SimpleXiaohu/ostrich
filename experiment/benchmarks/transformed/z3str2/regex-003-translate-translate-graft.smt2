(declare-const x String)
(assert (= x "ndWFWe}ndndWFW"))
(assert (str.in.re x (str.to.re "e}nd")))
(check-sat)
(get-model)