(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.++ (re.* (re.* (str.to.re "w"))) (str.to.re "w"))))
(assert (str.in.re x (re.++ (str.to.re "A") (re.* (str.to.re "A")))))
(assert (str.in.re x (re.++ (str.to.re "A") (re.++ (re.* (str.to.re "j")) (str.to.re "j")))))
(check-sat)
(get-model)