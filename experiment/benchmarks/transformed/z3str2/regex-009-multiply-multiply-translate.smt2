(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "....oooocccc''''"))))
(assert (str.in.re x (re.* (str.to.re "....oooocccc''''....oooocccc''''"))))
(assert (> (str.len x) 80))
(assert (< (str.len x) 100))
(check-sat)
(get-model)