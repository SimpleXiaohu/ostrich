(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.* (re.union (str.to.re "s") (str.to.re "o")))))
(assert (= 3 (str.len x)))
(assert (not (= x "soo")))
(assert (not (= x "sos")))
(assert (not (= x "oos")))
(assert (not (= x "ooo")))
(assert (not (= x "oss")))
(assert (not (= x "oso")))
(assert (not (= x "sss")))
(check-sat)
(get-model)