(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.++ (str.to.re "bb") (re.* (str.to.re "aa")))))
(assert (str.in.re x (str.to.re "aa")))
(assert (= (str.len x) 6))
(check-sat)
(get-model)