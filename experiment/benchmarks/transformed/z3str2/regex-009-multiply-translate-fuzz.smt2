(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "' ')T'\r'MYZZ)m"))))
(assert (str.in.re x (re.* (str.to.re ":5xP5h7:RKrSammGY?zV`3D'\x0c'xT}7zy{o?O(pyemvR?"))))
(assert (> (str.len x) 38))
(assert (< (str.len x) 60))
(check-sat)
(get-model)