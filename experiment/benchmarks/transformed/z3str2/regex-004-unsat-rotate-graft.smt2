(declare-const x String)
(assert (= x "abcdcde"))
(assert (str.in.re x (re.union (re.* (str.to.re "cde")) (str.to.re "abcd"))))
(check-sat)
(get-model)