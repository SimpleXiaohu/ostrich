(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.* (re.range "0" "9"))))
(assert (= (str.len x) 2))
(assert (not (= x "11")))
(assert (not (= x "00")))
(assert (not (= x "33")))
(assert (not (= x "22")))
(assert (not (= x "88")))
(assert (not (= x "66")))
(assert (not (= x "44")))
(assert (not (= x "99")))
(assert (not (= x "77")))
(check-sat)
(get-model)