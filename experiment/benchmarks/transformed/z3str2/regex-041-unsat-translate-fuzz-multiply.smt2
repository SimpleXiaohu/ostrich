(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.++ (str.to.re "__") (re.* (str.to.re "{{^^'''\x0c''\x0c''''''\x0c''\x0c'''")))))
(assert (str.in.re x (re.++ (str.to.re "ss") (re.* (str.to.re "00")))))
(assert (str.in.re x (re.++ (str.to.re "__") (re.++ (re.+ (str.to.re "''xx")) (re.+ (str.to.re "yy"))))))
(check-sat)
(get-model)