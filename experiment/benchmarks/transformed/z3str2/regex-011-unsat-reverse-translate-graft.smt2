(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "q{]H"))))
(assert (str.in.re y (str.to.re "q{]H")))
(assert (= 6 (str.len x)))
(check-sat)
(get-model)