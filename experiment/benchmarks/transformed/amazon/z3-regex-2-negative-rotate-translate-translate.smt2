(declare-const S String)
(assert (str.in.re S (re.++ (str.to.re "\\\\\\<<<") re.allchar)))
(assert (not (str.in.re S (re.++ re.allchar (re.++ (str.to.re "<<<") (re.++ (str.to.re "\\\\\\") re.allchar))))))
(check-sat)
(get-model)