(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "<<"))))
(assert (= 4 (str.len x)))
(assert (not (= x "'''''\n''\n''''''''''\n''\n'''''")))
(assert (not (= x "<<'''''\n''\n'''''")))
(check-sat)
(get-model)