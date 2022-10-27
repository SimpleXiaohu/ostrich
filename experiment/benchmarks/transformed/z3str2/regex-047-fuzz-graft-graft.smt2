(declare-const key String)
(declare-const val String)
(define-fun QuoteRegex ((aRegex (RegEx String))) (RegEx String) (str.to.re "a"))
(assert (str.in.re key (QuoteRegex (str.to.re """"))))
(assert (= (str.len key) 1))
(check-sat)
(get-model)