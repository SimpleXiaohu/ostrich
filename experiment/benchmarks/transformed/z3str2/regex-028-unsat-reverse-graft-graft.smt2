(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.* (re.* (str.to.re "baba"))))))
(assert (str.in.re x (str.to.re "cababa")))
(assert (str.in.re x (str.to.re "ba")))
(assert (> (str.len x) 1))
(check-sat)
(get-model)