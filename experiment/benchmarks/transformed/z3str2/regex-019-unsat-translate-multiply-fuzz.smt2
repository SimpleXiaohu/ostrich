(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "*i"))))
(assert (= 8 (str.len x)))
(assert (not (= x "ii0""'\t'PL_>)Rg5iii")))
(check-sat)
(get-model)