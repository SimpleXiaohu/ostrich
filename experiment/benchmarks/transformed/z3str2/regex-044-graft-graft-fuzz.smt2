(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.* (re.range "0" "9"))))
(assert (= 0 (str.len x)))
(assert (not (= x "")))
(assert (not (= x "f")))
(assert (not (= x "")))
(assert (not (= x "X")))
(assert (not (= x "8")))
(assert (not (= x "6")))
(assert (not (= x "4")))
(assert (not (= x "")))
(assert (not (= x "7")))
(check-sat)
(get-model)