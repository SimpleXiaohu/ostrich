(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re ")&Uf") (re.union (str.to.re "123") (str.to.re "}L"))))))
(assert (= 5 (str.len x)))
(check-sat)
(get-model)