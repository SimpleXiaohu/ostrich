(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (str.to.re "A!") (str.to.re "v''\x0c'hw'GVt^D")))))
(assert (= 12 (str.len x)))
(check-sat)
(get-model)