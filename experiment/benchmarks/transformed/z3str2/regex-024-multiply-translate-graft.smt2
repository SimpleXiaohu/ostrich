(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (re.* (str.to.re "NN")) (str.to.re "PP")))))
(assert (str.in.re y (re.* (re.++ (str.to.re "PP") (re.* (str.to.re "NN"))))))
(check-sat)
(get-model)