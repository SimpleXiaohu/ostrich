(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re "tQ") (re.union (str.to.re "~s'\r'H") (str.to.re "321"))))))
(assert (= 5 (str.len x)))
(check-sat)
(get-model)