(declare-const S String)
(assert (not (str.in.re S (re.union re.allchar (str.to.re "ba@LRP/")))))
(assert (str.in.re S (re.union re.allchar (re.++ (re.union (str.to.re "aa") (str.to.re "bbv+")) re.allchar))))
(check-sat)
(get-model)
(get-info :reason-unknown)