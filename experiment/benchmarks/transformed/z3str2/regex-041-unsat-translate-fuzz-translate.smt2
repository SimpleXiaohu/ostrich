(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.++ (str.to.re "~") (re.* (str.to.re "%(*!**!*")))))
(assert (str.in.re x (re.++ (str.to.re "S") (re.* (str.to.re "0")))))
(assert (str.in.re x (re.++ (str.to.re "~") (re.++ (re.+ (str.to.re "*-")) (re.+ (str.to.re "'\x0b'"))))))
(check-sat)
(get-model)