(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.union (re.+ (str.to.re "")) (str.to.re "%"))))
(assert (str.in.re x (re.union (re.++ (str.to.re "a") (str.to.re "B")) (re.+ (re.* (str.to.re "c"))))))
(assert (= 0 (str.len x)))
(check-sat)
(get-model)