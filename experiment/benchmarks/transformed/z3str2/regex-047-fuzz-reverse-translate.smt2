(declare-const key String)
(declare-const val String)
(define-fun QuoteRegex ((aRegex (RegEx String))) (RegEx String) (re.++ (str.to.re "T") (re.union (str.to.re "j") aRegex)))
(assert (str.in.re key (QuoteRegex (re.* (str.to.re "'\n'")))))
(assert (= (str.len key) 1))
(check-sat)
(get-model)