(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (str.to.re "k)") (str.to.re "v''\r''GVeCq")))))
(assert (= 11 (str.to.int x)))
(check-sat)
(get-model)