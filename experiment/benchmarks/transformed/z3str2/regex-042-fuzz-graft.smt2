(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.union (str.to.re "8") (re.+ (str.to.re "")))))
(assert (str.in.re x (re.++ (re.* (str.to.re "+")) (re.union (re.* (str.to.re "b")) (str.to.re "a")))))
(assert (= (str.len x) 0))
(check-sat)
(get-model)