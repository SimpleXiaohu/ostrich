(declare-const x String)
(assert (= (str.len x) 4))
(assert (str.in.re x (re.+ (str.to.re "cA&vd,IOxC"))))
(assert (str.in.re x (re.* (str.to.re ">z}T%(2'\x0b'bCld"))))
(check-sat)
(get-model)