(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.union (re.+ (str.to.re "")) (str.to.re "")))))
(assert (= (str.to.int x) 6))
(assert (not (= x "bb")))
(assert (not (= x "~_IUv,Ye")))
(assert (not (= x "t`n")))
(check-sat)
(get-model)