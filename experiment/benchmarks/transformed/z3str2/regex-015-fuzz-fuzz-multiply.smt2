(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re "ss"))))
(assert (str.in.re y (re.* (re.* (str.to.re ",,$$~~jjLLnnKK[[%%++99'''\r''\r'''II]]XX")))))
(assert (= (str.to.int x) 6))
(assert (= (str.len y) 4))
(check-sat)
(get-model)