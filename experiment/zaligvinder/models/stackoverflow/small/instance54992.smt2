;test regex ^([a-zA-Z\d# ]+)-([a-zA-Z ]*)(?:([\w ]+)-){9}([a-zA-Z ~]+)([\w ]+)\.rpt$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "#") (str.to_re " ")))))) (re.++ (str.to_re "-") (re.++ (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (str.to_re " ")))) (re.++ ((_ re.loop 9 9) (re.++ (re.+ (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (str.to_re " "))) (str.to_re "-"))) (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (str.to_re " ") (str.to_re "~"))))) (re.++ (re.+ (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (str.to_re " "))) (re.++ (str.to_re ".") (re.++ (str.to_re "r") (re.++ (str.to_re "p") (str.to_re "t"))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)