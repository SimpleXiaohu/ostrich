(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "R")))
(assert (= 3 (str.len x)))
(assert (not (= x "PRR")))
(assert (not (= x "RPR")))
(assert (not (= x "PPR")))
(check-sat)
(get-model)