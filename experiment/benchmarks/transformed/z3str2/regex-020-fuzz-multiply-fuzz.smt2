(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (re.+ (str.to.re "")) (str.to.re "")))))
(assert (= (str.to.int x) 9))
(assert (not (= x "b)@B=rY")))
(assert (not (= x "~xppQ9r3)_,h+LgU|/jM' '9{R3IUv_7`r1(JC_'\x0c':,,Ye2TK'\x0b'(&A")))
(assert (not (= x "-`?HXQ")))
(check-sat)
(get-model)