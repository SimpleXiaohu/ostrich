(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "7Q}d\\.:EfSSixos="))))
(assert (str.in.re y (re.+ (str.to.re "ikrF?7Bm?"))))
(assert (= (str.len x) 2))
(check-sat)
(get-model)