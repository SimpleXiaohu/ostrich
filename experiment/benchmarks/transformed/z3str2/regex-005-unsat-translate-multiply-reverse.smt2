(declare-const x String)
(declare-const y String)
(assert (= x "##################"))
(assert (str.in.re x (re.* (re.* (str.to.re "WW''''\x0c''''\x0c''''gg")))))
(check-sat)
(get-model)