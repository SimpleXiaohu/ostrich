(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "AABB")))
(assert (= (str.len x) 10))
(assert (not (= x "112233AABB")))
(check-sat)
(get-model)