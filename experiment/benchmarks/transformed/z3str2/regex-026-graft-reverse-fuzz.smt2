(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (str.to.re "1") (re.* (str.to.re "a"))))))
(assert (str.in.re y (str.to.re "")))
(assert (not (= x y)))
(assert (= (str.len x) (str.to.int y)))
(check-sat)
(get-model)