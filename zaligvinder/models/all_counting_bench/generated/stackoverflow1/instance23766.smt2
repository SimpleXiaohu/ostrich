;test regex "[1-9][0-9]{0},(\d\d\d,){0}[0-9]{3}"
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "\u{22}") (re.++ (re.range "1" "9") ((_ re.loop 0 0) (re.range "0" "9")))) (re.++ (str.to_re ",") (re.++ ((_ re.loop 0 0) (re.++ (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (re.range "0" "9"))) (str.to_re ","))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{22}")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)