(declare-const x String)
(assert (= (str.len x) 9))
(assert (str.in.re x (re.+ (str.to.re "'\t'x"))))
(assert (str.in.re x (re.* (str.to.re "(7Uto'\x0b'Wk%' '"))))
(check-sat)
(get-model)