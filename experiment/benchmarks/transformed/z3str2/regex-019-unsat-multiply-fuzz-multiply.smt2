(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "...."))))
(assert (= 36 (str.to.int x)))
(assert (not (= x "....__<<11..[[FFJJ>>22vvxx&&'''\x0c''\x0c'''rrmmrr")))
(check-sat)
(get-model)