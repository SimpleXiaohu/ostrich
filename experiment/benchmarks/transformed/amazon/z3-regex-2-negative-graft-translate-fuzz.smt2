(declare-const S String)
(assert (str.in.re S (re.union (str.to.re "))XI1m}/") re.allchar)))
(assert (not (str.in.re S (str.to.re "imTX'i4n"))))
(check-sat)
(get-model)