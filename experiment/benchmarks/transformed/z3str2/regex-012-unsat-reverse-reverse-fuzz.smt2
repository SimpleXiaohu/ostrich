(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (str.to.re "3b5bd") (str.to.re "P>G2")))))
(assert (= 7 (str.to.int x)))
(check-sat)
(get-model)