(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.union (str.to.re "Y") (re.* (str.to.re "b")))))
(assert (str.in.re x (re.++ (str.to.re "") (re.* (re.* (re.union (str.to.re "a") (str.to.re "")))))))
(assert (= 3 (str.len x)))
(check-sat)
(get-model)