(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.++ (re.+ (str.to.re "y")) (re.* (str.to.re "{^''\x0c''''\x0c''")))))
(assert (str.in.re x (re.++ (str.to.re "s") (re.* (str.to.re "0")))))
(assert (str.in.re x (re.++ (str.to.re "_") (re.++ (re.+ (str.to.re "'x")) (str.to.re "_")))))
(check-sat)
(get-model)