(declare-const S String)
(assert (not (str.in.re S (re.union (str.to.re "bb") re.allchar))))
(assert (str.in.re S (str.to.re "bj'q")))
(check-sat)
(get-model)
(get-info :reason-unknown)