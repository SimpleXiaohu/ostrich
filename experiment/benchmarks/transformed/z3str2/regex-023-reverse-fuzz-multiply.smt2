(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (str.to.re "bb") (re.* (str.to.re "33"))))))
(assert (> (str.to.int x) 0))
(check-sat)
(get-model)