(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (re.* (str.to.re "9")) (str.to.re "")))))
(assert (= (str.to.int x) 6))
(assert (not (= x "a")))
(assert (not (= x "a#^")))
(assert (not (= x "?")))
(check-sat)
(get-model)