(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "__'\x0c''\x0c''\x0c'F'\x0c''\x0c'F'\x0c''\x0c''\x0c'"))))
(assert (str.in.re y (re.* (str.to.re "__'\x0c''\x0c''\x0c'F'\x0c''\x0c'F'\x0c''\x0c''\x0c'"))))
(assert (= (str.len x) 4))
(assert (= (str.len y) 8))
(check-sat)
(get-model)