(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re "]") (str.to.re "15_")))))
(assert (= 6 (str.len x)))
(assert (not (= x ")|R' '3A")))
(check-sat)
(get-model)