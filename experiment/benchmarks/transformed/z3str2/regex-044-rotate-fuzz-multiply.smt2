(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.+ (re.range "0" "9"))))
(assert (= 4 (str.len x)))
(assert (not (= x "")))
(assert (not (= x "00")))
(assert (not (= x "")))
(assert (not (= x "")))
(assert (not (= x "")))
(assert (not (= x "==")))
(assert (not (= x "aa")))
(assert (not (= x "99")))
(assert (not (= x "##")))
(check-sat)
(get-model)