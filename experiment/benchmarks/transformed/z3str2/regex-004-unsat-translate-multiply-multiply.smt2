(declare-const x String)
(assert (= x "wwww'''''''\x0b''\x0b''''''\x0b''\x0b''''''''''''''\r''\r''''''\r''\r'''''''hhhh'''''''\r''\r''''''\r''\r'''''''hhhh{{{{"))
(assert (str.in.re x (re.union (re.* (str.to.re "wwww'''''''\x0b''\x0b''''''\x0b''\x0b''''''''''''''\r''\r''''''\r''\r'''''''hhhh")) (re.* (str.to.re "'''''''\r''\r''''''\r''\r'''''''hhhh{{{{")))))
(check-sat)
(get-model)