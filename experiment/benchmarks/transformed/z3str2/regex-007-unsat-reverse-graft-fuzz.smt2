(declare-const x String)
(assert (= 9 (str.len x)))
(assert (str.in.re x (re.* (str.to.re "Wc"))))
(assert (str.in.re x (str.to.re "b")))
(check-sat)
(get-model)