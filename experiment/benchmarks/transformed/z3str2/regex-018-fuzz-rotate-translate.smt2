(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (str.to.re "Nd") (str.to.re "++U++Yh2")))))
(assert (= 8 (str.to.int x)))
(assert (not (= x "19++#++*}H' 'm]d")))
(check-sat)
(get-model)