(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "$") (re.* (str.to.re "l"))))))
(assert (= 3 (str.len x)))
(assert (not (= x "$$l")))
(assert (not (= x "$ll")))
(assert (not (= x "l$l")))
(check-sat)
(get-model)