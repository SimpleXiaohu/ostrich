(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "]X$i"))))
(assert (= 10 (str.len x)))
(assert (not (= x "zXA&\\|s#(2V-.1bLE@om")))
(check-sat)
(get-model)