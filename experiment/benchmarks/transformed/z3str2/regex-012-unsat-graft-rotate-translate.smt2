(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "]sEY"))))
(assert (= (str.len x) 5))
(check-sat)
(get-model)