(declare-const x String)
(assert (= x "5'\x0b'pU'\r'{]'\n'){eY8EH6Y{-7E>J6'^+D~'\t'%(ZNcK*Rx4SgWzRB$>^jvW''\n'a'O%'\t'yj9o9hj7'\x0c'B9;^N^,Z''{L)syS`J"))
(assert (str.in.re x (str.to.re "?='D1u2--||~;R`")))
(check-sat)
(get-model)