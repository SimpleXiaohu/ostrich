(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re "5u&=F)|/36+gS;~") (str.to.re "t&<=")))))
(assert (= 2 (str.to.int x)))
(check-sat)
(get-model)