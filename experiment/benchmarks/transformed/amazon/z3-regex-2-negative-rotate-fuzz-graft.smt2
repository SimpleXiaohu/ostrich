(declare-const S String)
(assert (str.in.re S (re.union (str.to.re "hA+;lbd^b") re.allchar)))
(assert (not (str.in.re S (re.++ re.allchar (str.to.re "")))))
(check-sat)
(get-model)