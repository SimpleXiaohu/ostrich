(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re "kk**11==((GGVV//") (re.++ (str.to.re "aa::MMvv@@ww77qqYYbb%%vv[[..==xxkk>>SSJJDD~~ZZ") (str.to.re "113333"))))))
(assert (= 18 (str.len x)))
(check-sat)
(get-model)