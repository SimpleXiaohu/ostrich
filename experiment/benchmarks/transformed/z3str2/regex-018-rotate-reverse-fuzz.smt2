(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (str.to.re "B6") (str.to.re "3p\\b")))))
(assert (= 9 (str.to.int x)))
(assert (not (= x "pS2&_tN")))
(check-sat)
(get-model)