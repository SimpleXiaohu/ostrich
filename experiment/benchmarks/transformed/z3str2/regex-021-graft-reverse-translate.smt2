(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.* (str.to.re "q")) (str.to.re "X")))))
(assert (= 2 (str.len x)))
(check-sat)
(get-model)