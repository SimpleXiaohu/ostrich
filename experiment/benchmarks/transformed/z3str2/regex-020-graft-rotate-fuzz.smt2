(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "'\x0c'")))
(assert (= 5 (str.len x)))
(assert (not (= x "7=47")))
(assert (not (= x "s'\n'b")))
(assert (not (= x "a,""M")))
(check-sat)
(get-model)