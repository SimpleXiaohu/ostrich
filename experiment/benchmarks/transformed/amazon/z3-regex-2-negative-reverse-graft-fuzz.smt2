(declare-const S String)
(assert (str.in.re S (re.++ re.allchar (re.++ (str.to.re "7;") (re.++ re.allchar (str.to.re "aa"))))))
(assert (not (str.in.re S (re.union re.allchar (str.to.re "X'jafa")))))
(check-sat)
(get-model)