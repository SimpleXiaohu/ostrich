(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (re.* (str.to.re "_.,mP7g'\x0c'")) (str.to.re "C")))))
(assert (= (str.len x) 21))
(assert (not (= x "rqAK;C5A8'aba'\r'%SIDW(X3S^'\x0c'bb")))
(assert (not (= x ".OX'\n''\x0b'e-c:bbjB'\t'ta}*LlD'\x0c'fN'\n'Q*'\n'3")))
(assert (not (= x "j>>:aX' 'a'\n'z1;PNYj' '3C/b")))
(check-sat)
(get-model)