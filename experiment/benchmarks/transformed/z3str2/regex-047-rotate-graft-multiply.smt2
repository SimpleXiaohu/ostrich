(declare-const key String)
(declare-const val String)
(define-fun QuoteRegex ((aRegex (RegEx String))) (RegEx String) (re.++ (str.to.re "aa") (str.to.re """""")))
(assert (str.in.re key (QuoteRegex (re.* (re.++ aRegex (str.to.re """"""))))))
(assert (= 4 (str.len key)))
(check-sat)
(get-model)