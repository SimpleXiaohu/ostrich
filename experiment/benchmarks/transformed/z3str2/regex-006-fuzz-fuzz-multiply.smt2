(declare-const x String)
(declare-const y String)
(assert (= x "33&&nnbbaaWWhh"))
(assert (str.in.re x (re.* (re.* (str.to.re "))AA}}>>'''\x0b''\x0b'''")))))
(check-sat)
(get-model)