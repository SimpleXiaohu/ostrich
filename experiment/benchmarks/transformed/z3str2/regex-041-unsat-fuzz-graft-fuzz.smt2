(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.union (str.to.re "6") (re.* (str.to.re "")))))
(assert (str.in.re x (re.++ (str.to.re "") (re.* (str.to.re "")))))
(assert (str.in.re x (re.++ (str.to.re "/") (re.++ (re.+ (str.to.re "")) (str.to.re "V")))))
(check-sat)
(get-model)