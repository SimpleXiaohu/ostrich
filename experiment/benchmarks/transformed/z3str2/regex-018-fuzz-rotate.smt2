(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (str.to.re "1''\t''") (str.to.re "liz3")))))
(assert (= 4 (str.to.int x)))
(assert (not (= x "12dcs|")))
(check-sat)
(get-model)