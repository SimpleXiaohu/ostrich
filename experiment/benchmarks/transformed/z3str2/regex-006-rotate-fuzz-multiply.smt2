(declare-const x String)
(declare-const y String)
(assert (= x "CC''' '' ''''''\x0c''\x0c'''22aa"))
(assert (str.in.re x (re.+ (re.+ (str.to.re "55")))))
(check-sat)
(get-model)