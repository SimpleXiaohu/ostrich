(declare-const x String)
(declare-const y String)
(assert (str.in.re y (str.to.re "a-l""2#Mw\\'\x0c'8*BTfnWL+LvT{")))
(assert (= 19 (str.len y)))
(check-sat)
(get-model)