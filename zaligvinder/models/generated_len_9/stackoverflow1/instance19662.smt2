;test regex r"(\d{6})(\d{5})(\d{3})(\d{4})(\d{4})(\d{3})(\d{3})(\d{4})(\d{4})(\d{4})"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "r") (re.++ (str.to_re "\u{22}") (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{22}")))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)