(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.* (str.to.re "KKKK")) (str.to.re "VVVV")))))
(assert (= (str.len x) 8))
(assert (not (= x "VVVVVVVV")))
(assert (not (= x "KKKKVVVV")))
(check-sat)
(get-model)