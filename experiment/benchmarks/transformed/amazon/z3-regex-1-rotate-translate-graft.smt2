(declare-const S String)
(assert (not (str.in.re S (re.++ (str.to.re "///~~~") re.allchar))))
(assert (str.in.re S (re.++ re.allchar (re.++ (str.to.re "~~~") (str.to.re "///")))))
(check-sat)
(get-model)
(get-info :reason-unknown)