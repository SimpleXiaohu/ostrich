(declare-const x String)
(declare-const y String)
(assert (= x "/]:(@7=(W''\n''Ui,?e/$(@^9n8&qU<ZeI"))
(assert (str.in.re x (re.* (str.to.re "bS$|"))))
(check-sat)
(get-model)