(declare-const x String)
(declare-const y String)
(assert (= x "yyBoHyyy"))
(assert (str.in.re x (re.+ (str.to.re ";$"))))
(check-sat)
(get-model)