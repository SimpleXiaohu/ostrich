(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "ddccgWitWk9+a"))))
(assert (str.in.re y (re.+ (str.to.re "d]:{qvIYWAV1)[u6"))))
(assert (= (str.len x) 5))
(check-sat)
(get-model)