(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.++ (re.* (str.to.re "'''''\x0c''\x0c'''''")) (str.to.re "__"))))
(assert (str.in.re x (re.++ (re.* (str.to.re "bb")) (str.to.re "bb"))))
(assert (str.in.re x (re.++ (re.++ (re.* (str.to.re "bb")) (re.* (str.to.re "'''''\x0c''\x0c'''''"))) (str.to.re "__"))))
(check-sat)
(get-model)