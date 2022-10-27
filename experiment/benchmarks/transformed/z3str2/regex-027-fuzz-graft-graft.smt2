(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "")))
(assert (= (str.to.int x) 5))
(assert (not (= x "|ew")))
(assert (not (= x "wOb")))
(assert (not (= x "?A\\{O")))
(check-sat)
(get-model)