(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "b")))
(assert (= 1 (str.to.int x)))
(assert (not (= x "")))
(assert (not (= x ":")))
(assert (not (= x "*G")))
(check-sat)
(get-model)