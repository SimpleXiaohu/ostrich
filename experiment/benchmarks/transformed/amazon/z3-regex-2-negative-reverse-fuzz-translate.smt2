(declare-const S String)
(assert (str.in.re S (re.union re.allchar (str.to.re "$$$TNT}'vH']TjTd]""TjT"))))
(assert (not (str.in.re S (re.++ re.allchar (re.union (str.to.re "\\#AH") (re.++ re.allchar (str.to.re "%4U")))))))
(check-sat)
(get-model)