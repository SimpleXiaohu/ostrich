(declare-const x String)
(assert (= x "JJ^^AADDAADD'''\n''\n'''"))
(assert (str.in.re x (re.union (re.* (str.to.re "JJ^^AADD")) (re.* (str.to.re "AADD'''\n''\n'''")))))
(check-sat)
(get-model)