(declare-const key String)
(declare-const val String)
(define-fun QuoteRegex ((aRegex (RegEx String))) (RegEx String) (re.++ (re.union aRegex (str.to.re "!")) (str.to.re "+")))
(assert (str.in.re key (QuoteRegex (re.* (str.to.re "")))))
(assert (= (str.len key) 1))
(check-sat)
(get-model)