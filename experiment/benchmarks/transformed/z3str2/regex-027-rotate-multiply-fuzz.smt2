(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (re.* (str.to.re "F")) (str.to.re "aa")))))
(assert (= (str.to.int x) 10))
(assert (not (= x "Fu""aaabb")))
(assert (not (= x "|G3&L4bQb")))
(assert (not (= x "$eQQb")))
(check-sat)
(get-model)