(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (re.* (re.union (str.to.re "wwww") (str.to.re "'\n''\n''\n''\n'")))))
(assert (= 12 (str.len x)))
(assert (not (= x "wwww'\n''\n''\n''\n''\n''\n''\n''\n'")))
(assert (not (= x "wwww'\n''\n''\n''\n'wwww")))
(assert (not (= x "'\n''\n''\n''\n''\n''\n''\n''\n'wwww")))
(assert (not (= x "'\n''\n''\n''\n''\n''\n''\n''\n''\n''\n''\n''\n'")))
(assert (not (= x "'\n''\n''\n''\n'wwwwwwww")))
(assert (not (= x "'\n''\n''\n''\n'wwww'\n''\n''\n''\n'")))
(assert (not (= x "wwwwwwwwwwww")))
(check-sat)
(get-model)