(declare-const x String)
(declare-const y String)
(assert (= x "|a?P#3-arnG$-V5jXg.aaa_Z''\r''''\x0c''6%m{Ys!oaT/"))
(assert (str.in.re x (re.* (str.to.re "cA5R7''\n''xhQ,*V"))))
(check-sat)
(get-model)