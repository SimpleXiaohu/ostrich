(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "3J:x*iB"))))
(assert (str.in.re y (re.+ (str.to.re "I7B{7?"))))
(assert (= (str.to.int x) 1))
(check-sat)
(get-model)