(declare-const x String)
(declare-const y String)
(assert (str.in.re y (re.* (re.* (str.to.re "Hi""c")))))
(assert (= (str.len y) 8))
(check-sat)
(get-model)