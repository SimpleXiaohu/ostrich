(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.++ (str.to.re "{") (re.* (str.to.re "I")))))
(assert (str.in.re x (re.++ (str.to.re "u") (re.* (str.to.re "u")))))
(assert (str.in.re x (re.++ (str.to.re "{") (re.++ (re.* (str.to.re "I")) (re.* (str.to.re "u"))))))
(check-sat)
(get-model)