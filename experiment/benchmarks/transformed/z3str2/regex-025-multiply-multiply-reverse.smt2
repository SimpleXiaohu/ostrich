(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "bbbb") (re.* (str.to.re "aaaa"))))))
(assert (str.in.re y (re.* (re.++ (str.to.re "bbbb") (re.* (str.to.re "aaaa"))))))
(assert (= (str.len x) (str.len y)))
(assert (not (= x y)))
(assert (= (str.len x) 28))
(check-sat)
(get-model)