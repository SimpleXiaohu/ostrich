(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re ""))))
(assert (= 8 (str.len x)))
(assert (not (= x "*''\n''|.e=``l/")))
(check-sat)
(get-model)