(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "4JqP7#0''\x0c''c''\x0b''Ps9a=stai''\t''."))))
(assert (str.in.re x (re.* (str.to.re "A?gOs1,Si8B''\r''mES3aad[qcbK|u)cZN'ls(ka"))))
(assert (> (str.to.int x) 35))
(assert (< (str.len x) 39))
(check-sat)
(get-model)