(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "|/G'''\x0b'''=d"))))
(assert (str.in.re x (str.to.re "'gzvPdiw<9.(a4-y`''' '''9!n")))
(assert (> (str.len x) 7))
(assert (< 5 (str.to.int x)))
(check-sat)
(get-model)