(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (str.to.re "") (re.union (str.to.re "c%l") (str.to.re "C"))))))
(assert (= 5 (str.len x)))
(check-sat)
(get-model)