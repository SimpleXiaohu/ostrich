(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.* (re.++ (str.to.re "aaaa") (str.to.re "jjjj")))))
(assert (= 0 (str.to.int x)))
(assert (not (= x "5555tttt}}}}")))
(assert (not (= x "bbbb")))
(assert (not (= x "NNNN")))
(assert (not (= x "bbbbbbbb")))
(assert (not (= x "nnnnGGGGnnnn5555....aaaa")))
(assert (not (= x "VVVVVVVV")))
(assert (not (= x "wwww====qqqqVVVVaaaagggg")))
(check-sat)
(get-model)