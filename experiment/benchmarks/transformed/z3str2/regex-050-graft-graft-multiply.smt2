(declare-const x String)
(declare-const y String)
(assert (= (str.len x) 4))
(assert (= x y))
(assert (str.in.re y (re.* (re.range "a" "b"))))
(assert (str.prefixof "11" x))
(check-sat)
(get-model)