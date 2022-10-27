(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "aab"))))
(assert (str.in.re x (re.+ (str.to.re "aabi'\x0c'.)^QLgqsvy:%q)U3"))))
(assert (str.in.re x (re.* (str.to.re "aab@b@4YC?6(AaDCa""\\~`r9fwoHnJ\\Gu'\x0b'$"))))
(assert (> (str.len x) 0))
(check-sat)
(get-model)