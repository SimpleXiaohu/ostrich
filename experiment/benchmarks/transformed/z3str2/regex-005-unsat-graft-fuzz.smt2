(declare-const x String)
(declare-const y String)
(assert (= x "=xN3aak3'\r'u9'\x0c'"))
(assert (str.in.re x (re.+ (str.to.re "c8T"))))
(check-sat)
(get-model)