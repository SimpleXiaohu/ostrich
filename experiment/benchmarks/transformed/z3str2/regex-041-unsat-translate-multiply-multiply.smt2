(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.++ (str.to.re "____") (re.* (str.to.re "'''''''\x0c''\x0c''''''\x0c''\x0c'''''''")))))
(assert (str.in.re x (re.++ (str.to.re "bbbb") (re.* (str.to.re "bbbb")))))
(assert (str.in.re x (re.++ (str.to.re "____") (re.++ (re.* (str.to.re "'''''''\x0c''\x0c''''''\x0c''\x0c'''''''")) (re.* (str.to.re "bbbb"))))))
(check-sat)
(get-model)