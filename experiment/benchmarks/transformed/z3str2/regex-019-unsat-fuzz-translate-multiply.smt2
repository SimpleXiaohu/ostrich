(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re ""))))
(assert (= 4 (str.len x)))
(assert (not (= x "PPPP")))
(check-sat)
(get-model)