(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "aB8ddG7bq"))))
(assert (str.in.re x (re.+ (str.to.re "aab"))))
(assert (str.in.re x (re.+ (str.to.re "aY''\n''\\kV@|ol*L,''\r''@q#ph|6U:bE4vm]=<_''\x0c''e0''\t''v_f0c"))))
(assert (> (str.to.int x) 1))
(check-sat)
(get-model)