(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "a"))))
(assert (str.in.re x (re.+ (str.to.re "ay''\x0b''lC"))))
(assert (str.in.re x (re.+ (str.to.re "i.E/Z''\x0b''baM:)-"))))
(check-sat)
(get-model)