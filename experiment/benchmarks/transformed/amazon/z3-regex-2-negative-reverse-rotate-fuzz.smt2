(declare-const S String)
(assert (str.in.re S (re.union re.allchar (str.to.re "b"))))
(assert (not (str.in.re S (re.union re.allchar (re.++ (re.++ (str.to.re "a") (str.to.re "g'\r'b")) re.allchar)))))
(check-sat)
(get-model)