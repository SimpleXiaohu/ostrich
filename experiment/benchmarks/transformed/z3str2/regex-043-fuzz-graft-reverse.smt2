(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (str.to.re "j")))
(assert (= (str.to.int x) 0))
(assert (not (= x "}t5")))
(assert (not (= x "b")))
(assert (not (= x "N")))
(assert (not (= x "bb")))
(assert (not (= x "a.5nGn")))
(assert (not (= x "VV")))
(assert (not (= x "gaVq=w")))
(check-sat)
(get-model)