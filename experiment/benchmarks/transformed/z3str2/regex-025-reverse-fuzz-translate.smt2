(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "~") (re.+ (str.to.re "c"))))))
(assert (str.in.re y (re.+ (re.union (str.to.re "b") (re.+ (str.to.re ""))))))
(assert (= (str.to.int x) (str.to.int y)))
(assert (not (= x y)))
(assert (= (str.to.int x) 2))
(check-sat)
(get-model)