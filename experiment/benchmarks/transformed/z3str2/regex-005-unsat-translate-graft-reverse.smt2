(declare-const x String)
(declare-const y String)
(assert (= x "#########"))
(assert (str.in.re x (str.to.re "W'''\x0c'''g")))
(check-sat)
(get-model)