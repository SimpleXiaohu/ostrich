(declare-const x String)
(declare-const y String)
(assert (= x "FFFFFFFFFFFFFFFFFF"))
(assert (str.in.re x (re.* (str.to.re "..''kk"))))
(check-sat)
(get-model)