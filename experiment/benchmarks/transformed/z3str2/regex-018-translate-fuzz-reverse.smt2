(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (str.to.re "1") (str.to.re "Vm")))))
(assert (= 7 (str.len x)))
(assert (not (= x "@31")))
(check-sat)
(get-model)