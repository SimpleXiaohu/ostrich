(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.union (str.to.re "bb") (re.* (str.to.re "YY")))))
(assert (str.in.re x (re.++ (re.* (re.* (str.to.re ""))) (re.union (str.to.re "aa") (str.to.re "")))))
(assert (= 6 (str.len x)))
(check-sat)
(get-model)