(declare-const S String)
(assert (str.in.re S (re.++ (str.to.re "~~~c~~c~~~~~~c~~c~~~~~~c~~c~~~::::::") re.allchar)))
(assert (not (str.in.re S (re.++ (re.++ (re.++ (str.to.re "~~~c~~c~~~~~~c~~c~~~~~~c~~c~~~") re.allchar) (str.to.re "::::::")) re.allchar))))
(check-sat)
(get-model)