(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "Mm"))))
(assert (str.in.re x (re.* (str.to.re "MmMm"))))
(assert (str.in.re x (re.* (str.to.re "LmMmMm"))))
(assert (> (str.len x) 1))
(check-sat)
(get-model)