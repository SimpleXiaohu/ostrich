(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "]1"))))
(assert (str.in.re y (re.* (re.* (str.to.re "(ns[R@u0w'\x0b'7V2T}Esk1e'\t'")))))
(assert (= (str.len x) 1))
(assert (= (str.len y) 5))
(check-sat)
(get-model)