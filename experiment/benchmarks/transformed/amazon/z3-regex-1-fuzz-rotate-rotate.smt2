(declare-const S String)
(assert (not (str.in.re S (re.++ (str.to.re "aK:^G''' '''I7Qj.L+96") re.allchar))))
(assert (str.in.re S (re.union (str.to.re "a1") (re.++ (re.union re.allchar (str.to.re "`b}T.")) re.allchar))))
(check-sat)
(get-model)
(get-info :reason-unknown)