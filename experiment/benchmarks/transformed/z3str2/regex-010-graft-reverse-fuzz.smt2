(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "8a")))
(assert (str.in.re x (re.* (str.to.re "aba"))))
(assert (str.in.re x (re.+ (str.to.re "h_i:C'\n''\n'W'\r'f#.aO_;3V"))))
(check-sat)
(get-model)