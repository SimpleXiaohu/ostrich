(declare-const x String)
(declare-const y String)
(assert (= x "aJc7(EaQu.a"))
(assert (str.in.re x (re.+ (re.+ (str.to.re "ce")))))
(check-sat)
(get-model)