(declare-const x String)
(declare-const y String)
(assert (= x "jjjjjjjjj"))
(assert (str.in.re x (re.* (str.to.re "pBv"))))
(check-sat)
(get-model)