(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "''\r'''k''\n''''\r'''k''\n''")))
(assert (str.in.re x (re.* (re.* (str.to.re "''\r'''k''\n''")))))
(assert (> (str.len x) 20))
(assert (< 25 (str.len x)))
(check-sat)
(get-model)