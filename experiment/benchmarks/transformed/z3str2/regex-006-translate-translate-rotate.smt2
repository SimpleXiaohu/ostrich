(declare-const x String)
(declare-const y String)
(assert (= x "r`Sr`S"))
(assert (str.in.re x (re.* (re.* (str.to.re "r`S")))))
(check-sat)
(get-model)