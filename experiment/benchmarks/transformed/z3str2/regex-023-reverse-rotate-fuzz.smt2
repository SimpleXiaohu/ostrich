(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (str.to.re "^") (re.* (str.to.re "w"))))))
(assert (> (str.len x) 0))
(check-sat)
(get-model)