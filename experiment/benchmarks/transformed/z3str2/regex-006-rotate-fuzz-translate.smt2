(declare-const x String)
(declare-const y String)
(assert (= x "-h'hhBh2p"))
(assert (str.in.re x (re.+ (re.+ (str.to.re "5")))))
(check-sat)
(get-model)