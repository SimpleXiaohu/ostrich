(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "bW<I#pA!'"))))
(assert (str.in.re y (re.+ (str.to.re ":p8''\n''>^l"))))
(assert (= (str.len x) 0))
(assert (= (str.to.int y) 0))
(check-sat)
(get-model)