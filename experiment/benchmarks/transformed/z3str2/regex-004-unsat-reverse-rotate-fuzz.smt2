(declare-const x String)
(assert (= x "?$""dT};Zcm}a"))
(assert (str.in.re x (re.union (re.+ (re.+ (str.to.re "dK' '"))) (str.to.re "da.d8"))))
(check-sat)
(get-model)