(declare-const S String)
(assert (str.in.re S (re.union (str.to.re "rr::00bbbb") re.allchar)))
(assert (not (str.in.re S (re.union (str.to.re "bb88uuJJ") re.allchar))))
(check-sat)
(get-model)