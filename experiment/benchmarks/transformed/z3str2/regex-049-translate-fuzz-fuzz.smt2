(declare-const key String)
(declare-const val String)
(assert (str.in.re key (re.+ (re.range "a" "b"))))
(assert (<= 10 (str.len key)))
(assert (>= 17 (str.len key)))
(check-sat)
(get-model)