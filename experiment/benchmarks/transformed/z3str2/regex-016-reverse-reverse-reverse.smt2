(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re "dcba") (str.to.re "321")))))
(assert (= 11 (str.len x)))
(assert (not (= x "dcba321dcba")))
(assert (not (= x "321dcbadcba")))
(check-sat)
(get-model)