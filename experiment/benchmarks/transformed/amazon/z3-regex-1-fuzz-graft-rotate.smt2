(declare-const S String)
(assert (not (str.in.re S (re.++ (str.to.re "aK:^G''' '''I7Qj.L+96") re.allchar))))
(assert (str.in.re S (re.union (re.union (re.++ re.allchar (str.to.re "`b}T.")) re.allchar) (str.to.re "a1"))))
(check-sat)
(get-model)
(get-info :reason-unknown)