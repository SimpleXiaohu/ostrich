(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (= (str.++ x y) (str.++ m n)))
(assert (str.in.re n (re.+ (str.to.re "ap0Nkk_0'%'\x0b':"))))
(assert (> (str.to.int x) (str.len m)))
(assert (= 10 (str.len n)))
(assert (= 3 (str.len y)))
(check-sat)
(get-model)