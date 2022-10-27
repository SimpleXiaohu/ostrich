(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re "w") (re.* (str.to.re "-"))))))
(assert (= (str.len x) 3))
(assert (not (= x "w")))
(assert (not (= x "s:")))
(assert (not (= x "?'U^W-")))
(check-sat)
(get-model)