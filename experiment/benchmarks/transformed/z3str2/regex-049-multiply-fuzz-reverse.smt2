(declare-const key String)
(declare-const val String)
(assert (str.in.re key (re.* (re.range "a" "b"))))
(assert (<= 14 (str.to.int key)))
(assert (>= 16 (str.to.int key)))
(check-sat)
(get-model)