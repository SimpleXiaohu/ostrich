;test regex ^((\d{4})_\d+.jpg)(\n\2.+)+
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re "_") (re.++ (re.+ (re.range "0" "9")) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "j") (re.++ (str.to_re "p") (str.to_re "g"))))))) (re.+ (re.++ (str.to_re "\u{0a}") (re.++ (_ re.reference 2) (re.+ (re.diff re.allchar (str.to_re "\n"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)