(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.+ (re.range "0" "9"))))
(assert (= 0 (str.len x)))
(assert (not (= x "x^U")))
(assert (not (= x "'\x0c'g")))
(assert (not (= x "3")))
(assert (not (= x "i02")))
(assert (not (= x "S")))
(assert (not (= x "6")))
(assert (not (= x "g@")))
(assert (not (= x "/~C")))
(assert (not (= x "77")))
(check-sat)
(get-model)