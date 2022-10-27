(declare-const key String)
(declare-const val String)
(define-fun QuoteRegex ((aRegex (RegEx String))) (RegEx String) (str.to.re "aa"))
(assert (str.in.re key (QuoteRegex (re.* (re.++ (str.to.re """""") (re.++ aRegex (str.to.re """""")))))))
(assert (= 4 (str.len key)))
(check-sat)
(get-model)