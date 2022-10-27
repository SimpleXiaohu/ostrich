(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re "x") (re.* (str.to.re ""))))))
(assert (= (str.len x) 4))
(assert (not (= x "xxa")))
(assert (not (= x "xx")))
(assert (not (= x "aH]")))
(check-sat)
(get-model)