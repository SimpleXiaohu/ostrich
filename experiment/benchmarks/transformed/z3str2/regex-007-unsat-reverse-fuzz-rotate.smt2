(declare-const x String)
(assert (= (str.to.int x) 12))
(assert (str.in.re x (re.+ (str.to.re "e#ur"))))
(assert (str.in.re x (re.* (str.to.re "ba"))))
(check-sat)
(get-model)