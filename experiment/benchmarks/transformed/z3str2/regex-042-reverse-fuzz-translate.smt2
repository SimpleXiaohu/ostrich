(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.union (re.+ (str.to.re "U")) (str.to.re ""))))
(assert (str.in.re x (re.union (re.++ (re.+ (str.to.re "")) (re.+ (str.to.re "5"))) (str.to.re "H"))))
(assert (= 0 (str.len x)))
(check-sat)
(get-model)