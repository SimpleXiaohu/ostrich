(declare-const x String)
(declare-const y String)
(assert (= (str.to.int x) 0))
(assert (= x y))
(assert (str.in.re y (re.+ (re.range "a" "b"))))
(assert (str.suffixof "" x))
(check-sat)
(get-model)