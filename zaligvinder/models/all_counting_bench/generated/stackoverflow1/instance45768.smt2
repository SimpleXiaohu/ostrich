;test regex "[0-9]{4,5}\.FU|[0-9]{4,5}\.NG|[0-9]{4,5}\.SP|[0-9]{4,5}\.T|JGB[A-Z][0-9]|JNI[A-Z][0-9]|JN4F[A-Z][0-9]|JNM[A-Z][0-9]|JTI[A-Z][0-9]|JTM[A-Z][0-9]|NIY[A-Z][0-9]|SSI[A-Z][0-9]|JNI[A-Z][0-9]-[A-Z][0-9]|JTI[A-Z][0-9]-[A-Z][0-9]"
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "\u{22}") (re.++ ((_ re.loop 4 5) (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ (str.to_re "F") (str.to_re "U"))))) (re.++ ((_ re.loop 4 5) (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ (str.to_re "N") (str.to_re "G"))))) (re.++ ((_ re.loop 4 5) (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ (str.to_re "S") (str.to_re "P"))))) (re.++ ((_ re.loop 4 5) (re.range "0" "9")) (re.++ (str.to_re ".") (str.to_re "T")))) (re.++ (str.to_re "J") (re.++ (str.to_re "G") (re.++ (str.to_re "B") (re.++ (re.range "A" "Z") (re.range "0" "9")))))) (re.++ (str.to_re "J") (re.++ (str.to_re "N") (re.++ (str.to_re "I") (re.++ (re.range "A" "Z") (re.range "0" "9")))))) (re.++ (str.to_re "J") (re.++ (str.to_re "N") (re.++ (str.to_re "4") (re.++ (str.to_re "F") (re.++ (re.range "A" "Z") (re.range "0" "9"))))))) (re.++ (str.to_re "J") (re.++ (str.to_re "N") (re.++ (str.to_re "M") (re.++ (re.range "A" "Z") (re.range "0" "9")))))) (re.++ (str.to_re "J") (re.++ (str.to_re "T") (re.++ (str.to_re "I") (re.++ (re.range "A" "Z") (re.range "0" "9")))))) (re.++ (str.to_re "J") (re.++ (str.to_re "T") (re.++ (str.to_re "M") (re.++ (re.range "A" "Z") (re.range "0" "9")))))) (re.++ (str.to_re "N") (re.++ (str.to_re "I") (re.++ (str.to_re "Y") (re.++ (re.range "A" "Z") (re.range "0" "9")))))) (re.++ (str.to_re "S") (re.++ (str.to_re "S") (re.++ (str.to_re "I") (re.++ (re.range "A" "Z") (re.range "0" "9")))))) (re.++ (str.to_re "J") (re.++ (str.to_re "N") (re.++ (str.to_re "I") (re.++ (re.range "A" "Z") (re.++ (re.range "0" "9") (re.++ (str.to_re "-") (re.++ (re.range "A" "Z") (re.range "0" "9"))))))))) (re.++ (str.to_re "J") (re.++ (str.to_re "T") (re.++ (str.to_re "I") (re.++ (re.range "A" "Z") (re.++ (re.range "0" "9") (re.++ (str.to_re "-") (re.++ (re.range "A" "Z") (re.++ (re.range "0" "9") (str.to_re "\u{22}"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)