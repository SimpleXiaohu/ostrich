(declare-const x String)
(declare-const y String)
(assert (= x "aaaah%j?8' 'ynaaa"))
(assert (str.in.re x (re.* (str.to.re "ce;"))))
(check-sat)
(get-model)