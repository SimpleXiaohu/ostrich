(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "")))
(assert (= (str.to.int x) 0))
(assert (not (= x "NIY^6RHOjm'6V9T(")))
(check-sat)
(get-model)