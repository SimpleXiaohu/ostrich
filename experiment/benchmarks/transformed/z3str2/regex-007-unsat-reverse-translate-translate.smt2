(declare-const x String)
(assert (= (str.len x) 8))
(assert (str.in.re x (re.* (str.to.re "|~'\t'"))))
(assert (str.in.re x (re.* (str.to.re "|'\t'F#:#"))))
(check-sat)
(get-model)