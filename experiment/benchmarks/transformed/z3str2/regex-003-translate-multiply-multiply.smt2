(declare-const x String)
(assert (= x "'''''''\n''\n''''''\n''\n'''''''````JJJJ____IIII'''''''\n''\n''''''\n''\n'''''''````'''''''\n''\n''''''\n''\n'''''''````JJJJ"))
(assert (str.in.re x (re.* (re.union (str.to.re "____IIII'''''''\n''\n''''''\n''\n'''''''````") (str.to.re "'''''''\n''\n''''''\n''\n'''''''````JJJJ")))))
(check-sat)
(get-model)