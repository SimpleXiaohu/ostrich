(declare-const S String)
(assert (str.in.re S (re.++ re.allchar (re.++ (str.to.re "ddd") (re.++ re.allchar (str.to.re "&&&"))))))
(assert (not (str.in.re S (re.++ re.allchar (str.to.re "ddd&&&")))))
(check-sat)
(get-model)