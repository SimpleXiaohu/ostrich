(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "VR%|^?r"))))
(assert (str.in.re y (re.* (str.to.re "ahsj2s"))))
(assert (= (str.len x) 11))
(check-sat)
(get-model)