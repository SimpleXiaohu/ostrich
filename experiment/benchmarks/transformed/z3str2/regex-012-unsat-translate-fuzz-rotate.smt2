(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (str.to.re "''\r''8Ouk95zo'mOcLw'") (str.to.re "123")))))
(assert (= 3 (str.to.int x)))
(check-sat)
(get-model)