(declare-const S String)
(assert (not (str.in.re S (re.++ (re.++ (str.to.re "x") re.allchar) re.allchar))))
(assert (str.in.re S (re.++ (re.union (str.to.re "x''\x0b''aeKLKF") (str.to.re "''\x0b''''\x0b''''\x0b''")) re.allchar)))
(check-sat)
(get-model)
(get-info :reason-unknown)