(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.* (re.++ (str.to.re "aa") (str.to.re "")))))
(assert (= 0 (str.to.int x)))
(assert (not (= x "JJ++??aabb")))
(assert (not (= x "")))
(assert (not (= x "bb//;;<<")))
(assert (not (= x "bbbb")))
(assert (not (= x "")))
(assert (not (= x "aabb")))
(assert (not (= x "hh")))
(check-sat)
(get-model)