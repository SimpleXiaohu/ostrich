(declare-const x String)
(declare-const y String)
(assert (= x "k''\n''$e@U~$"))
(assert (str.in.re x (re.* (re.+ (str.to.re "k$$")))))
(check-sat)
(get-model)