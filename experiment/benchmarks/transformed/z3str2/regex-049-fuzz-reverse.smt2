(declare-const key String)
(declare-const val String)
(assert (str.in.re key (re.* (re.range "a" "b"))))
(assert (<= 4 (str.to.int key)))
(assert (>= 6 (str.len key)))
(check-sat)
(get-model)