(declare-const S String)
(assert (not (str.in.re S (re.++ (str.to.re "aaabbb") re.allchar))))
(assert (str.in.re S (re.++ (re.++ re.allchar (str.to.re "aaa")) (str.to.re "bbb"))))
(check-sat)
(get-model)
(get-info :reason-unknown)