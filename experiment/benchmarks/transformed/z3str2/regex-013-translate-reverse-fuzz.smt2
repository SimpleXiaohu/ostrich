(declare-const x String)
(declare-const y String)
(assert (str.in.re y (re.* (re.* (str.to.re ">p?W7SDZ'\x0c'~""NzDUT2RHf'A\\c?E")))))
(assert (= (str.len y) 1))
(check-sat)
(get-model)