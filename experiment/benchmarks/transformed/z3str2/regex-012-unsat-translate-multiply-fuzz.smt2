(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (str.to.re "fL]%vtL/u.'\x0b'Z1:7(ur%''\x0b'''9''") (str.to.re "DF)2z1%'\x0b'/lD236#Nxf")))))
(assert (= 7 (str.len x)))
(check-sat)
(get-model)