(declare-const x String)
(declare-const y String)
(assert (str.in.re y (re.+ (re.+ (str.to.re "ICArt|'\r'{(/6""'\n'}6=IeLQwH'\x0c'/H/<)<;Xmg0~A=b")))))
(assert (= (str.to.int y) 3))
(check-sat)
(get-model)