(declare-const S String)
(assert (not (str.in.re S (re.++ re.allchar (re.++ (str.to.re "bbb") (str.to.re "aaa"))))))
(assert (str.in.re S (re.++ re.allchar (str.to.re "bbbaaa"))))
(check-sat)
(get-model)
(get-info :reason-unknown)