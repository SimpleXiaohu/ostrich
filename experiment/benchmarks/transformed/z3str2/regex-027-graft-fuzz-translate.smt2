(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re "q") (re.+ (str.to.re "E"))))))
(assert (= 4 (str.to.int x)))
(assert (not (= x "E")))
(assert (not (= x "Ez")))
(assert (not (= x "z")))
(check-sat)
(get-model)