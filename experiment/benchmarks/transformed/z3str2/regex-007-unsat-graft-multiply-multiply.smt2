(declare-const x String)
(assert (= 32 (str.len x)))
(assert (str.in.re x (re.* (re.* (str.to.re "aaaabbbbccccdddd")))))
(assert (str.in.re x (str.to.re "cccceeeedddd")))
(check-sat)
(get-model)