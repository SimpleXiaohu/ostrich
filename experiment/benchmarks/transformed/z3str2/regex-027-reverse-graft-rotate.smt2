(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "b") (str.to.re "a")))))
(assert (= 3 (str.len x)))
(assert (not (= x "baa")))
(assert (not (= x "bba")))
(assert (not (= x "bab")))
(check-sat)
(get-model)