(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "nn") (re.* (str.to.re "PP"))))))
(assert (= (str.len x) 6))
(assert (not (= x "nnnnPP")))
(assert (not (= x "nnPPnn")))
(assert (not (= x "nnPPPP")))
(check-sat)
(get-model)