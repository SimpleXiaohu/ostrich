(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re "SS'''\t''\t'''") (str.to.re "332211")))))
(assert (= 10 (str.len x)))
(assert (not (= x "SS'''\t''\t'''332211")))
(check-sat)
(get-model)