(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (re.+ (str.to.re "i")) (str.to.re ".")))))
(assert (str.in.re y (re.+ (re.union (re.+ (str.to.re "_")) (str.to.re ".")))))
(check-sat)
(get-model)