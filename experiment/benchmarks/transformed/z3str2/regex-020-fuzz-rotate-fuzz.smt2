(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (re.+ (str.to.re "")) (str.to.re "")))))
(assert (= (str.len x) 2))
(assert (not (= x "bb")))
(assert (not (= x "~_I8FH:x61r+'3H,e")))
(assert (not (= x "i|FO>^")))
(check-sat)
(get-model)