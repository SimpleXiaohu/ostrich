(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (str.to.re "dwos^") (re.++ (str.to.re "\\4!I;") (str.to.re "BA"))))))
(assert (= 10 (str.len x)))
(check-sat)
(get-model)