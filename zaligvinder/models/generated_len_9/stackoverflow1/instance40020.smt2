;test regex ^\d{6}(?:(\d)\d\d\1|(\d)\d\2\d|(\d)\3\d\d|\d(\d)\d\4|\d(\d)\5\d|\d\d(\d)\6)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (re.union (re.union (re.union (re.union (re.union (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (_ re.reference 1)))) (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (re.++ (_ re.reference 2) (re.range "0" "9"))))) (re.++ (re.range "0" "9") (re.++ (_ re.reference 3) (re.++ (re.range "0" "9") (re.range "0" "9"))))) (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (_ re.reference 4))))) (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (re.++ (_ re.reference 5) (re.range "0" "9"))))) (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (_ re.reference 6))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)