(declare-const x String)
(assert (= x "MM}}UUZZiiMM}}MM}}UU"))
(assert (str.in.re x (re.* (re.union (str.to.re "ZZiiMM}}") (str.to.re "MM}}UU")))))
(check-sat)
(get-model)