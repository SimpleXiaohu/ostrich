(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re "aa++;;NN") (str.to.re "112233")))))
(assert (= 22 (str.len x)))
(assert (not (= x "aa++;;NN112233aa++;;NN")))
(assert (not (= x "aa++;;NNaa++;;NN112233")))
(check-sat)
(get-model)