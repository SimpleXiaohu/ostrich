(declare-const S String)
(assert (str.in.re S (re.++ (str.to.re "aaHbbbb") re.allchar)))
(assert (not (str.in.re S (re.++ re.allchar (re.union (str.to.re "p=m=bbp?2nGgt'\n':b") (re.++ (str.to.re "RaSt`Ka") re.allchar))))))
(check-sat)
(get-model)