(declare-const x String)
(declare-const y String)
(assert (= x "ank,)%_aaa"))
(assert (str.in.re x (re.+ (str.to.re "dc"))))
(check-sat)
(get-model)