(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "bb") (re.* (str.to.re ""))))))
(assert (= 4 (str.len x)))
(assert (not (= x "bb")))
(assert (not (= x "aa&&")))
(check-sat)
(get-model)