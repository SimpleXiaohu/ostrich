(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "i"))))
(assert (= 3 (str.to.int x)))
(assert (not (= x "YM3pi?5m=fii")))
(check-sat)
(get-model)