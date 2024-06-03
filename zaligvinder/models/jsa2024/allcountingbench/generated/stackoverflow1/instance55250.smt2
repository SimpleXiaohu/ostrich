;test regex r'^[1-9\w]{2}_[1-9\w]{4}[1][7][\d\w]+\.[\d\w]+'
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "r") (str.to_re "\u{27}")) (re.++ (str.to_re "") (re.++ ((_ re.loop 2 2) (re.union (re.range "1" "9") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))) (re.++ (str.to_re "_") (re.++ ((_ re.loop 4 4) (re.union (re.range "1" "9") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))) (re.++ (str.to_re "1") (re.++ (str.to_re "7") (re.++ (re.+ (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))) (re.++ (str.to_re ".") (re.++ (re.+ (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))) (str.to_re "\u{27}")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)