(declare-const x String)
(assert (= x "YYwYYO#)-YYwYYOYYwYYO#"))
(assert (str.in.re x (re.* (re.union (str.to.re ")-YYwYYO") (str.to.re "YYwYYO#")))))
(check-sat)
(get-model)