(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "ba"))))
(assert (str.in.re x (re.* (str.to.re "`ah<:lp>`"))))
(assert (str.in.re x (re.+ (str.to.re "'\n'VbAG'\n'aA[="))))
(assert (> (str.to.int x) 2))
(check-sat)
(get-model)