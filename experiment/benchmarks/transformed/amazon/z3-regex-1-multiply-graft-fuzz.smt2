(declare-const S String)
(assert (not (str.in.re S (re.++ (str.to.re "'\x0b'4,""?vbBvk+icK#'\x0b']ab2h)bbb") re.allchar))))
(assert (str.in.re S (str.to.re "b*Q8b")))
(check-sat)
(get-model)
(get-info :reason-unknown)