(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (re.* (str.to.re "")) (str.to.re "bbbb")))))
(assert (str.in.re y (re.+ (re.union (re.+ (str.to.re "UUrr")) (str.to.re "bb")))))
(assert (not (= x y)))
(assert (= (str.to.int x) (str.to.int y)))
(check-sat)
(get-model)