(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "aappppnnOOXX")))
(assert (str.in.re y (re.* (re.* (str.to.re "<<'''''\t''\t'''''QQBBgg[[ZZnn**AAOO'''''\r''\r'''''")))))
(assert (= 6 (str.to.int x)))
(check-sat)
(get-model)