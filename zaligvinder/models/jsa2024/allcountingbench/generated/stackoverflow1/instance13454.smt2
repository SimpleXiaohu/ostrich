;test regex ^(?:[1-9][0-9]{7}|[0-9][1-9][0-9]{6}|[0-9]{2}[1-9][0-9]{5}|[0-9]{3}[1-9][0-9]{4}|[0-9]{4}[1-9][0-9]{3}|[0-9]{5}[1-9][0-9]{2}|[0-9]{6}[1-9][0-9]|[0-9]{7}[1-9])$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (re.range "1" "9") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (re.range "0" "9") (re.++ (re.range "1" "9") ((_ re.loop 6 6) (re.range "0" "9"))))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.range "1" "9") ((_ re.loop 5 5) (re.range "0" "9"))))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (re.range "1" "9") ((_ re.loop 4 4) (re.range "0" "9"))))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (re.range "1" "9") ((_ re.loop 2 2) (re.range "0" "9"))))) (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")))) (re.++ ((_ re.loop 7 7) (re.range "0" "9")) (re.range "1" "9")))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)