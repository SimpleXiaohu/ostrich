(declare-const S String)
(assert (str.in.re S (re.++ (re.++ re.allchar (str.to.re "bbb")) re.allchar)))
(assert (not (str.in.re S (re.++ (str.to.re "aaa") (re.++ (str.to.re "aaabbb") re.allchar)))))
(check-sat)
(get-model)