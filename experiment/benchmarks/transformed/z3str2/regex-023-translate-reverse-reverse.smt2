(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.* (str.to.re "b")) (str.to.re "E")))))
(assert (> (str.len x) 0))
(check-sat)
(get-model)