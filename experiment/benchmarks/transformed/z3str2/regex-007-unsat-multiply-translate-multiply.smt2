(declare-const x String)
(assert (= (str.len x) 32))
(assert (str.in.re x (re.* (str.to.re "]]]]XXXXmmmm"))))
(assert (str.in.re x (re.* (str.to.re "JJJJ????]]]]mmmm"))))
(check-sat)
(get-model)