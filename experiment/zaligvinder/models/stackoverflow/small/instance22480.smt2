;test regex :%s/^([A-Z][0-9]+\|){3}//g
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re ":") (re.++ (str.to_re "%") (re.++ (str.to_re "s") (str.to_re "/")))) (re.++ (str.to_re "") (re.++ ((_ re.loop 3 3) (re.++ (re.range "A" "Z") (re.++ (re.+ (re.range "0" "9")) (str.to_re "|")))) (re.++ (str.to_re "/") (re.++ (str.to_re "/") (str.to_re "g"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)