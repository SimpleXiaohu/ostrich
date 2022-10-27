(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (str.to.re "CC") (str.to.re "")))))
(assert (= 10 (str.to.int x)))
(assert (not (= x "||eeww")))
(assert (not (= x "wwOObb")))
(assert (not (= x "??AA\\\\{{OO")))
(check-sat)
(get-model)