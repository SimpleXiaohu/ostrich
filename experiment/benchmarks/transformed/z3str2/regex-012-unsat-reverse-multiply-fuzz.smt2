(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.++ (str.to.re "dd1o-f}=Q%'`' 'As~[ba") (str.to.re "?c9'tMD\\")))))
(assert (= 19 (str.len x)))
(check-sat)
(get-model)