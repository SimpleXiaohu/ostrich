(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (str.to.re "q0Q'\x0b'[?;Rv,'\r'T") (str.to.re "23")))))
(assert (= 7 (str.len x)))
(check-sat)
(get-model)