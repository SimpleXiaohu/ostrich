(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (str.to.re "*") (str.to.re "Q")))))
(assert (str.in.re y (re.+ (re.++ (re.+ (str.to.re "")) (re.* (str.to.re "a"))))))
(assert (not (= x y)))
(assert (= (str.to.int x) (str.len y)))
(check-sat)
(get-model)