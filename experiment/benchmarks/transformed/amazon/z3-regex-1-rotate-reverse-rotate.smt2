(declare-const S String)
(assert (not (str.in.re S (re.++ re.allchar (str.to.re "bbbaaa")))))
(assert (str.in.re S (re.++ (str.to.re "aaa") (re.++ (str.to.re "bbb") (re.++ re.allchar re.allchar)))))
(check-sat)
(get-model)
(get-info :reason-unknown)