(declare-const S String)
(assert (not (str.in.re S (re.++ re.allchar (str.to.re "69EexyG7wQQoQQC(<@;")))))
(assert (str.in.re S (re.union (re.union (re.++ re.allchar (str.to.re "1;")) (str.to.re "x'\r'B=P")) re.allchar)))
(check-sat)
(get-model)
(get-info :reason-unknown)