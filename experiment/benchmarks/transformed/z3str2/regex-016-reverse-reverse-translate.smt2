(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re "W='\x0c'D") (str.to.re "123")))))
(assert (= 11 (str.len x)))
(assert (not (= x "W='\x0c'D123W='\x0c'D")))
(assert (not (= x "W='\x0c'DW='\x0c'D123")))
(check-sat)
(get-model)