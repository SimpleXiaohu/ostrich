(declare-const S String)
(assert (str.in.re S (re.union (str.to.re "QQgg,,VVbb'''\r''\r'''") re.allchar)))
(assert (not (str.in.re S (re.union (re.union (re.union (str.to.re "**iihh33kk'''\x0c''\x0c'''") re.allchar) (str.to.re "bb88uuJJ")) re.allchar))))
(check-sat)
(get-model)