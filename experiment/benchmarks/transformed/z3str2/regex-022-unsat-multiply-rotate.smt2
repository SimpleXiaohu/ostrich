(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.* (str.to.re "bb")) (str.to.re "aa")))))
(assert (= (str.len x) 4))
(assert (not (= x "bbbb")))
(assert (not (= x "aabb")))
(check-sat)
(get-model)