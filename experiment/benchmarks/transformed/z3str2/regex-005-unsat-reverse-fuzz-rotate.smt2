(declare-const x String)
(declare-const y String)
(assert (= x "aaa-XhJx"))
(assert (str.in.re x (re.* (re.+ (str.to.re "de")))))
(check-sat)
(get-model)