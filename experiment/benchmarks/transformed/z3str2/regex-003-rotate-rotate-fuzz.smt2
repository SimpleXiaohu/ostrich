(declare-const x String)
(assert (= x "c]6?'\t'H%k4=f;?r<0abcc"))
(assert (str.in.re x (re.* (re.++ (str.to.re "acd") (str.to.re "c""#\\")))))
(check-sat)
(get-model)