;test regex ^[2-9]\d{1,}[1-9]0*[4-9]0*$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.range "2" "9") (re.++ (re.++ (re.* (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (re.range "1" "9") (re.++ (re.* (str.to_re "0")) (re.++ (re.range "4" "9") (re.* (str.to_re "0")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)