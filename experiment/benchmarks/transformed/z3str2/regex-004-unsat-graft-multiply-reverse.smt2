(declare-const x String)
(assert (= x "eeddccddccbbaa"))
(assert (str.in.re x (re.union (str.to.re "ddccbbaa") (re.* (str.to.re "eeddcc")))))
(check-sat)
(get-model)