(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "aa") (re.* (str.to.re "bb"))))))
(assert (= 4 (str.len x)))
(assert (not (= x "bbbb")))
(assert (not (= x "aabb")))
(check-sat)
(get-model)