(declare-const S String)
(assert (not (str.in.re S (re.union (str.to.re "0L$""%%x~") re.allchar))))
(assert (str.in.re S (re.union (str.to.re "MAeQyMF'\x0c'""") re.allchar)))
(check-sat)
(get-model)
(get-info :reason-unknown)