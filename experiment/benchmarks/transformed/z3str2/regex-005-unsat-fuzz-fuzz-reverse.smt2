(declare-const x String)
(declare-const y String)
(assert (= x "n@[""1e)7+'J6eMr''\n''(ozT>aR$7!v2j"))
(assert (str.in.re x (re.* (re.+ (str.to.re "dc")))))
(check-sat)
(get-model)