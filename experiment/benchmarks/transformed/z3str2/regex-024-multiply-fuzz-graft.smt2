(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (re.+ (str.to.re "a")) (str.to.re "h")))))
(assert (str.in.re y (re.+ (re.union (str.to.re "''\n''") (str.to.re "*ET")))))
(check-sat)
(get-model)