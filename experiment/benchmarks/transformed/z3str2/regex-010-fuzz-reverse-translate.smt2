(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "XC"))))
(assert (str.in.re x (re.+ (str.to.re "' 'X"))))
(assert (str.in.re x (re.+ (str.to.re "\\%sqs}`X"))))
(check-sat)
(get-model)