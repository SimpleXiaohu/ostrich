(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "IIAA"))))
(assert (str.in.re x (re.* (str.to.re "IIAAIIAA"))))
(assert (str.in.re x (re.* (str.to.re "CCAAIIAAIIAA"))))
(assert (> (str.len x) 2))
(check-sat)
(get-model)