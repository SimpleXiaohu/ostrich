(declare-const x String)
(declare-const y String)
(assert (= x "bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"))
(assert (str.in.re x (re.* (re.* (str.to.re "dddd]]]]EEEE")))))
(check-sat)
(get-model)