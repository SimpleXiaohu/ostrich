(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "VV"))))
(assert (= 10 (str.len x)))
(assert (not (= x "VVVVVVVVVV")))
(check-sat)
(get-model)