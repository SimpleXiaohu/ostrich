(declare-const S String)
(assert (str.in.re S (re.++ (str.to.re "PPgPPPPgPPPPgPPyyy") re.allchar)))
(assert (not (str.in.re S (re.++ re.allchar (re.++ (str.to.re "yyy") (re.++ (str.to.re "PPgPPPPgPPPPgPP") re.allchar))))))
(check-sat)
(get-model)