(declare-const x String)
(declare-const y String)
(assert (= x "__________________"))
(assert (str.in.re x (re.* (re.* (str.to.re "..tt'\x0c''\x0c'")))))
(check-sat)
(get-model)