(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.* (str.to.re "ssss")) (str.to.re "GGGG")))))
(assert (= (str.len x) 8))
(check-sat)
(get-model)