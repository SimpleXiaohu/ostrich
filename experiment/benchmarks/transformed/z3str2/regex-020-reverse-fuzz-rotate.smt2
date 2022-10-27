(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "") (re.* (str.to.re ""))))))
(assert (= (str.to.int x) 4))
(assert (not (= x ">B9")))
(assert (not (= x "bL''\r''Nc")))
(assert (not (= x "baa")))
(check-sat)
(get-model)