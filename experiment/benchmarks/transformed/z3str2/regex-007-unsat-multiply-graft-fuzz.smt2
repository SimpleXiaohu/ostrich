(declare-const x String)
(assert (= 2 (str.to.int x)))
(assert (str.in.re x (str.to.re "cX$/b")))
(assert (str.in.re x (re.+ (str.to.re "abY&[=bC6.'\t'?'\t'RR]A=7RT0eOmnjmx"))))
(check-sat)
(get-model)