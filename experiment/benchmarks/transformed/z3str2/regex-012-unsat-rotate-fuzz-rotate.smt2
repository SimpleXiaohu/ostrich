(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re "Z''\x0b'''' ''") (str.to.re "13")))))
(assert (= 10 (str.len x)))
(check-sat)
(get-model)