(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "o") (re.* (str.to.re "b"))))))
(assert (str.in.re y (re.+ (re.++ (str.to.re "e") (re.+ (str.to.re "V"))))))
(assert (= (str.len x) (str.to.int y)))
(assert (not (= x y)))
(assert (= (str.len x) 10))
(check-sat)
(get-model)