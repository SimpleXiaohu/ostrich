(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "'''KcDGU") (str.to.re "")))))
(assert (= 17 (str.len x)))
(check-sat)
(get-model)