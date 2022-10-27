(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.* (str.to.re "")) (str.to.re "oo")))))
(assert (= (str.len x) 4))
(assert (not (= x "oo")))
(assert (not (= x "'\x0c''\x0c'..")))
(check-sat)
(get-model)