(declare-const x String)
(declare-const y String)
(assert (= x ":`kS_y0~''\r''HG'' ''"))
(assert (str.in.re x (re.* (str.to.re ""))))
(check-sat)
(get-model)