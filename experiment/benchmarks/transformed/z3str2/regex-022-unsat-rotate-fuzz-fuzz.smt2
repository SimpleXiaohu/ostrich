(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (re.* (str.to.re "")) (str.to.re "")))))
(assert (= (str.len x) 8))
(assert (not (= x "#")))
(assert (not (= x "b")))
(check-sat)
(get-model)