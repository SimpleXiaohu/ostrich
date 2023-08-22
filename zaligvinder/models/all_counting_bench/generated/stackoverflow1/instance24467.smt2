;test regex \d{2}:\d{2}|[AMP]+
(declare-const X String)
(assert (str.in_re X (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re ":") ((_ re.loop 2 2) (re.range "0" "9")))) (re.+ (re.union (str.to_re "A") (re.union (str.to_re "M") (str.to_re "P")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)