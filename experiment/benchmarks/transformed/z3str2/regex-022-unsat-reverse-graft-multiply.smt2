(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "aa")))
(assert (= 4 (str.len x)))
(assert (not (= x "bbbb")))
(assert (not (= x "bbaa")))
(check-sat)
(get-model)