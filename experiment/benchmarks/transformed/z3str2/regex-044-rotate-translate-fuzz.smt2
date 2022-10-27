(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.+ (re.range "0" "9"))))
(assert (= 0 (str.len x)))
(assert (not (= x "1")))
(assert (not (= x "}")))
(assert (not (= x "?")))
(assert (not (= x "2")))
(assert (not (= x ",")))
(assert (not (= x "6")))
(assert (not (= x "")))
(assert (not (= x "")))
(assert (not (= x "7")))
(check-sat)
(get-model)