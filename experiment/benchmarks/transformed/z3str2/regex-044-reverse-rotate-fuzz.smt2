(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.* (re.range "0" "9"))))
(assert (= 1 (str.len x)))
(assert (not (= x "1")))
(assert (not (= x "")))
(assert (not (= x "3")))
(assert (not (= x "2")))
(assert (not (= x "1")))
(assert (not (= x "")))
(assert (not (= x "")))
(assert (not (= x "9")))
(assert (not (= x "x")))
(check-sat)
(get-model)