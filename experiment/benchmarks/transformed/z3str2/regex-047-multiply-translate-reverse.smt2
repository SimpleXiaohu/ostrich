(declare-const key String)
(declare-const val String)
(define-fun QuoteRegex ((aRegex (RegEx String))) (RegEx String) (re.++ (str.to.re "vv") (re.++ aRegex (str.to.re "vv"))))
(assert (str.in.re key (QuoteRegex (re.* (str.to.re "//")))))
(assert (= (str.len key) 4))
(check-sat)
(get-model)