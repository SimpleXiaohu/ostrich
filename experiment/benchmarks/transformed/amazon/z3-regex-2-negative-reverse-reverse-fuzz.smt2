(declare-const S String)
(assert (str.in.re S (re.union (str.to.re "UbMyY|OX>""y'\t'") re.allchar)))
(assert (not (str.in.re S (re.union (re.union (re.++ (str.to.re "aa") re.allchar) (str.to.re "b")) re.allchar))))
(check-sat)
(get-model)