(declare-const key String)
(declare-const val String)
(assert (str.in.re key (re.* (re.range "a" "b"))))
(assert (<= 5 7))
(assert (>= (str.len key) (str.len key)))
(check-sat)
(get-model)