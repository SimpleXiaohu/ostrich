(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.* (str.to.re "l")) (str.to.re "m")))))
(assert (= (str.len x) 3))
(assert (not (= x "llm")))
(assert (not (= x "lmm")))
(assert (not (= x "mlm")))
(check-sat)
(get-model)