(declare-const key String)
(declare-const val String)
(define-fun QuoteRegex ((aRegex (RegEx String))) (RegEx String) (re.++ (str.to.re "~") (str.to.re ">")))
(assert (str.in.re key (QuoteRegex (re.* (re.++ (str.to.re "") aRegex)))))
(assert (= 1 (str.len key)))
(check-sat)
(get-model)