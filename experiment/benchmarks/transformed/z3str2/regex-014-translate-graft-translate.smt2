(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "'\x0c'AApAA"))))
(assert (str.in.re y (str.to.re "'\x0c'AApAA")))
(assert (= (str.len x) (str.len y)))
(assert (= 2 4))
(check-sat)
(get-model)