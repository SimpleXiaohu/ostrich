(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.union (str.to.re "ZZ") (re.* (str.to.re "[[")))))
(assert (str.in.re x (re.++ (str.to.re "") (re.union (re.* (str.to.re """""")) (re.* (str.to.re ""))))))
(assert (= 6 (str.len x)))
(check-sat)
(get-model)