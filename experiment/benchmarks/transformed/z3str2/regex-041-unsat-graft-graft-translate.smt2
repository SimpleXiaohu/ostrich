(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.++ (str.to.re "'\x0b'") (re.* (str.to.re "T")))))
(assert (str.in.re x (re.++ (str.to.re "N") (re.* (str.to.re "N")))))
(assert (str.in.re x (str.to.re "N")))
(check-sat)
(get-model)