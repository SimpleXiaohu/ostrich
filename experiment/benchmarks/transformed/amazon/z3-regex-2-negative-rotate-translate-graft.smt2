(declare-const S String)
(assert (str.in.re S (re.++ (str.to.re "^^^eee") re.allchar)))
(assert (not (str.in.re S (re.++ re.allchar (str.to.re "^^^")))))
(check-sat)
(get-model)