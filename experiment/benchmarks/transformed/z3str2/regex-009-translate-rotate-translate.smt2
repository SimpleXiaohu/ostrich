(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "@@x@@<`' '"))))
(assert (str.in.re x (re.* (str.to.re "@@x@@<`' '@@x@@<`' '"))))
(assert (> (str.len x) 20))
(assert (< (str.len x) 25))
(check-sat)
(get-model)