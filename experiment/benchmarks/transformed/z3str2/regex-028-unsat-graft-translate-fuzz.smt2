(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "n["))))
(assert (str.in.re x (re.* (str.to.re "nh"))))
(assert (str.in.re x (str.to.re "[0}eA-LHGc")))
(assert (> 2 (str.to.int x)))
(check-sat)
(get-model)