(declare-const S String)
(assert (str.in.re S (re.++ (str.to.re "((((((BBBBBB") re.allchar)))
(assert (not (str.in.re S (re.++ (re.++ (str.to.re "BBBBBB") (re.++ (str.to.re "((((((") re.allchar)) re.allchar))))
(check-sat)
(get-model)