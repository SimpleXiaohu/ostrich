(declare-const S String)
(assert (str.in.re S (str.to.re "z8+-")))
(assert (not (str.in.re S (re.union (re.++ (re.++ (str.to.re "HH8") re.allchar) (re.union (str.to.re "_n0zz") re.allchar)) re.allchar))))
(check-sat)
(get-model)