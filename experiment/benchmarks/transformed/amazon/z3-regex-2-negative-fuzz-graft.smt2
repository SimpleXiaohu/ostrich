(declare-const S String)
(assert (str.in.re S (re.++ (str.to.re "aDU6xABb") re.allchar)))
(assert (not (str.in.re S (re.union (re.union (str.to.re "bb") (re.union (str.to.re "aa") re.allchar)) re.allchar))))
(check-sat)
(get-model)