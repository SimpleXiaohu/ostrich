(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "AAII"))))
(assert (str.in.re x (re.* (re.* (str.to.re "AAIIAAIIAACC")))))
(assert (str.in.re x (str.to.re "AAIIAAII")))
(assert (> 2 (str.len x)))
(check-sat)
(get-model)