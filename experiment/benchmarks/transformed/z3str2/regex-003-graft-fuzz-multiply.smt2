(declare-const x String)
(assert (= x "cceeaaTT>>$$uu55EENNzz,,//{{"))
(assert (str.in.re x (str.to.re "RRmmjj")))
(check-sat)
(get-model)