(declare-const x String)
(declare-const y String)
(assert (= x "xLo]@2#c"))
(assert (str.in.re x (re.* (re.* (str.to.re "3#@<")))))
(check-sat)
(get-model)