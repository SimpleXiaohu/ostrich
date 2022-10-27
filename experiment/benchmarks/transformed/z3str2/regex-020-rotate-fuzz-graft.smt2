(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "") (re.+ (str.to.re ""))))))
(assert (= 1 (str.to.int x)))
(assert (not (= x "'^''\x0b''")))
(assert (not (= x "'a,8b")))
(assert (not (= x "L")))
(check-sat)
(get-model)