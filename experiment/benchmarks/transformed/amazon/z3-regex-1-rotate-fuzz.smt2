(declare-const S String)
(assert (not (str.in.re S (re.++ (str.to.re ".%[Z_Sab") re.allchar))))
(assert (str.in.re S (re.++ re.allchar (re.++ (str.to.re "(qrzb") (re.union (str.to.re "2=v") re.allchar)))))
(check-sat)
(get-model)
(get-info :reason-unknown)