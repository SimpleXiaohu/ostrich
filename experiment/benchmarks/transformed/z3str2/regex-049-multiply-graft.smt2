(declare-const key String)
(declare-const val String)
(assert (str.in.re key (re.* (re.range "a" "b"))))
(assert (<= 10 (str.len key)))
(assert (>= (str.len key) 14))
(check-sat)
(get-model)