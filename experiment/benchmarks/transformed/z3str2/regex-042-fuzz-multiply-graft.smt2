(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.union (str.to.re "YY") (str.to.re ""))))
(assert (str.in.re x (re.++ (str.to.re "") (re.union (re.* (str.to.re "aa")) (re.* (re.* (str.to.re "bb")))))))
(assert (= (str.len x) 6))
(check-sat)
(get-model)