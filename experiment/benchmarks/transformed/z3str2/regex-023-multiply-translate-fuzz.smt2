(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (re.* (str.to.re "%69")) (str.to.re "2h")))))
(assert (> (str.to.int x) 0))
(check-sat)
(get-model)