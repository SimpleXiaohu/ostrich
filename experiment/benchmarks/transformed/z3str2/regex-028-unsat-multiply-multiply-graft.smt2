(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "aaaabbbb"))))
(assert (str.in.re x (str.to.re "aaaabbbbaaaabbbb")))
(assert (str.in.re x (re.* (str.to.re "aaaabbbbaaaabbbbaaaacccc"))))
(assert (> 4 (str.len x)))
(check-sat)
(get-model)