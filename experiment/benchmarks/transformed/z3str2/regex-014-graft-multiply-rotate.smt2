(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.* (str.to.re "aabb")))))
(assert (str.in.re y (str.to.re "aabb")))
(assert (= (str.len x) (str.len y)))
(assert (= 4 8))
(check-sat)
(get-model)