(declare-const S String)
(assert (not (str.in.re S (re.++ (str.to.re "iiiggg") re.allchar))))
(assert (str.in.re S (str.to.re "iii")))
(check-sat)
(get-model)
(get-info :reason-unknown)