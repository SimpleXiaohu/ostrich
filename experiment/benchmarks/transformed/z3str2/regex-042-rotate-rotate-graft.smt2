(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.++ (str.to.re "a") (re.* (str.to.re "b")))))
(assert (str.in.re x (re.++ (str.to.re "c") (re.* (re.* (str.to.re "a"))))))
(assert (= (str.len x) 3))
(check-sat)
(get-model)