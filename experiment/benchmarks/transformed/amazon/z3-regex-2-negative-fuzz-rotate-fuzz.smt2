(declare-const S String)
(assert (str.in.re S (re.++ (str.to.re ":0bCP' '") re.allchar)))
(assert (not (str.in.re S (re.++ re.allchar (re.++ (str.to.re "8""") (re.++ (str.to.re "a") re.allchar))))))
(check-sat)
(get-model)