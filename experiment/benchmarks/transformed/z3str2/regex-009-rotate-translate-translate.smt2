(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "JO'\x0c'Oeb"))))
(assert (str.in.re x (re.* (str.to.re "JO'\x0c'OebJO'\x0c'Oeb"))))
(assert (> (str.len x) 20))
(assert (< (str.len x) 25))
(check-sat)
(get-model)