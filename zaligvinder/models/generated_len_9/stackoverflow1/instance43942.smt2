;test regex ^ABC-DEF-F1-[0-9]{8}-[0-9]{3}-[0-9]{12}-[0-9A-Za-z\-]+_[0-9]{4}_V1.DAT.gz$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "A") (re.++ (str.to_re "B") (re.++ (str.to_re "C") (re.++ (str.to_re "-") (re.++ (str.to_re "D") (re.++ (str.to_re "E") (re.++ (str.to_re "F") (re.++ (str.to_re "-") (re.++ (str.to_re "F") (re.++ (str.to_re "1") (re.++ (str.to_re "-") (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ ((_ re.loop 12 12) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ (re.+ (re.union (re.range "0" "9") (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (str.to_re "-"))))) (re.++ (str.to_re "_") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re "_") (re.++ (str.to_re "V") (re.++ (str.to_re "1") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "D") (re.++ (str.to_re "A") (re.++ (str.to_re "T") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "g") (str.to_re "z"))))))))))))))))))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)