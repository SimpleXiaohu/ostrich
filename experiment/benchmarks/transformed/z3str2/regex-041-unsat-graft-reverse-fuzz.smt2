(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.union (re.+ (str.to.re "b")) (str.to.re "E"))))
(assert (str.in.re x (re.union (re.* (str.to.re "c")) (str.to.re "L"))))
(assert (str.in.re x (re.++ (str.to.re "") (str.to.re "a"))))
(check-sat)
(get-model)