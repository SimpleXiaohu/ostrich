(declare-const S String)
(assert (str.in.re S (re.++ re.allchar (str.to.re "bbbaaa"))))
(assert (not (str.in.re S (re.++ (re.++ (str.to.re "aaa") (str.to.re "bbb")) (re.++ re.allchar re.allchar)))))
(check-sat)
(get-model)