(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "'\x0c'.sT"))))
(assert (str.in.re x (str.to.re "'\x0c'.sT'\x0c'.sT")))
(assert (> (str.len x) (str.len x)))
(assert (< 20 25))
(check-sat)
(get-model)