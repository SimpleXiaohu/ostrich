(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.* (str.to.re "LL")) (str.to.re "YY")))))
(assert (= (str.len x) 6))
(assert (not (= x "YYYYLL")))
(assert (not (= x "YYLLLL")))
(assert (not (= x "LLYYLL")))
(check-sat)
(get-model)