(declare-const x String)
(assert (= x "^&UPUP!"))
(assert (str.in.re x (str.to.re "^&UP")))
(check-sat)
(get-model)