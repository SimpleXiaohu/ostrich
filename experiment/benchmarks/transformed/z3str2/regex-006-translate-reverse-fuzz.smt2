(declare-const x String)
(declare-const y String)
(assert (= x "v~k0CGl,"))
(assert (str.in.re x (re.* (re.+ (str.to.re "")))))
(check-sat)
(get-model)