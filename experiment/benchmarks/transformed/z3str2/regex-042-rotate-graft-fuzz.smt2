(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.++ (str.to.re "") (re.* (str.to.re "")))))
(assert (str.in.re x (re.++ (str.to.re "") (re.++ (re.* (re.* (str.to.re "+"))) (str.to.re "l")))))
(assert (= (str.to.int x) 2))
(check-sat)
(get-model)