(declare-const x String)
(assert (= x "-Q+``z-7\\'\t':<p"))
(assert (str.in.re x (re.++ (re.* (str.to.re "U*")) (str.to.re "cb3'\x0b'\\5$7i"))))
(check-sat)
(get-model)