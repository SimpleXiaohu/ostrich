(declare-const S String)
(assert (str.in.re S (re.++ re.allchar (str.to.re "DDDDDDeeeeee"))))
(assert (not (str.in.re S (re.++ re.allchar (re.++ (str.to.re "DDDDDD") (re.++ re.allchar (str.to.re "eeeeee")))))))
(check-sat)
(get-model)