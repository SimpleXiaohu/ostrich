(declare-const key String)
(declare-const val String)
(define-fun QuoteRegex ((aRegex (RegEx String))) (RegEx String) (re.union (re.union aRegex (str.to.re """")) (re.+ (str.to.re ""))))
(assert (str.in.re key (QuoteRegex (str.to.re "v"))))
(assert (= 4 (str.to.int key)))
(check-sat)
(get-model)