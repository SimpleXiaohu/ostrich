(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.++ (str.to.re "bb") (re.+ (str.to.re "h'\t'")))))
(assert (str.in.re x (re.union (re.+ (re.+ (str.to.re "NPN"))) (re.union (str.to.re "V") (str.to.re "#")))))
(assert (= 9 (str.len x)))
(check-sat)
(get-model)