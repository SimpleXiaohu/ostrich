(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.union (str.to.re "~") (re.* (str.to.re "q")))))
(assert (str.in.re x (re.++ (str.to.re "") (re.++ (re.* (str.to.re "{")) (re.* (str.to.re ""))))))
(assert (= 5 (str.to.int x)))
(check-sat)
(get-model)