(declare-const x String)
(assert (= x "ecdJ/:WI`a"))
(assert (str.in.re x (re.++ (str.to.re "Tz!c") (re.+ (re.* (str.to.re "5$"))))))
(check-sat)
(get-model)