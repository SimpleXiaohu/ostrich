(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "V")))
(assert (= 4 (str.len x)))
(assert (not (= x "at%hb")))
(assert (not (= x "")))
(assert (not (= x ")0b")))
(check-sat)
(get-model)