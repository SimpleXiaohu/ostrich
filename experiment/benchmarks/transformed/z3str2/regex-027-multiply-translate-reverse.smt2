(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "pp") (re.* (str.to.re "''\t''''\t''"))))))
(assert (= (str.len x) 6))
(assert (not (= x "pp''\t''''\t''''\t''''\t''")))
(assert (not (= x "pppp''\t''''\t''")))
(assert (not (= x "pp''\t''''\t''pp")))
(check-sat)
(get-model)