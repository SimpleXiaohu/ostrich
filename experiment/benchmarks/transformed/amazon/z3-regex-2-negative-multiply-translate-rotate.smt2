(declare-const S String)
(assert (str.in.re S (re.++ (str.to.re "ppppppSSSSSS") re.allchar)))
(assert (not (str.in.re S (re.++ re.allchar (re.++ (str.to.re "SSSSSS") (re.++ (str.to.re "pppppp") re.allchar))))))
(check-sat)
(get-model)