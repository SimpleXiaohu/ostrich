(declare-const x String)
(assert (= x "JJ``'''''\n''\n'''''``'''''\n''\n'''''II__JJ``'''''\n''\n'''''"))
(assert (str.in.re x (re.* (re.union (str.to.re "``'''''\n''\n'''''II__") (str.to.re "JJ``'''''\n''\n'''''")))))
(check-sat)
(get-model)