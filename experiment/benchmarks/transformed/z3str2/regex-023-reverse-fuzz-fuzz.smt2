(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (str.to.re "") (re.* (str.to.re "T"))))))
(assert (> (str.to.int x) 0))
(check-sat)
(get-model)