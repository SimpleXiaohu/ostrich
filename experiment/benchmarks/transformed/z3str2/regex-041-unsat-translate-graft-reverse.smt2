(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.++ (re.* (str.to.re "'''\x0c'''")) (str.to.re "_"))))
(assert (str.in.re x (re.++ (re.* (str.to.re "b")) (str.to.re "b"))))
(assert (str.in.re x (re.++ (re.++ (str.to.re "_") (re.* (str.to.re "'''\x0c'''"))) (re.* (str.to.re "b")))))
(check-sat)
(get-model)