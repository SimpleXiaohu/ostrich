(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.++ (str.to.re "nn") (re.* (str.to.re "ZZ")))))
(assert (str.in.re x (re.++ (re.* (re.* (str.to.re "SS"))) (re.++ (str.to.re "nn") (str.to.re "ZZ")))))
(assert (= 6 (str.len x)))
(check-sat)
(get-model)