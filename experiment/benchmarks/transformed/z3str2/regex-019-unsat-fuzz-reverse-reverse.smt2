(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "d"))))
(assert (= 4 (str.len x)))
(assert (not (= x "\\|.1]")))
(check-sat)
(get-model)