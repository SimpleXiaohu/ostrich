(declare-const x String)
(assert (= x "DB9@lBc%"))
(assert (str.in.re x (re.union (re.* (str.to.re "),14AGU")) (str.to.re "c>:`8"))))
(check-sat)
(get-model)