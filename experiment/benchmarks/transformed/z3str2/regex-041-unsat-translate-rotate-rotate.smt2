(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.++ (str.to.re "_") (re.* (str.to.re "'''\x0c'''")))))
(assert (str.in.re x (re.++ (str.to.re "b") (re.* (str.to.re "b")))))
(assert (str.in.re x (re.++ (str.to.re "b") (re.* (re.* (re.++ (str.to.re "'''\x0c'''") (str.to.re "_")))))))
(check-sat)
(get-model)