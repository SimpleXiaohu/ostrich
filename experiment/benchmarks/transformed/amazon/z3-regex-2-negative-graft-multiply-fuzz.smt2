(declare-const S String)
(assert (str.in.re S (re.union (str.to.re "2Y<ehFE-KV'\x0b'%}\\((a+);bb") re.allchar)))
(assert (not (str.in.re S (re.++ (re.++ (str.to.re "I,IY@B") (re.union (str.to.re "aQGaF_;9Yp<KC.Q<") re.allchar)) re.allchar))))
(check-sat)
(get-model)