(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re ""))))
(assert (= (str.len x) 8))
(assert (not (= x "27' ''\x0c'TO")))
(check-sat)
(get-model)