;test regex MI\r\d\d\r(\d)\r[\s\w]{6}\r(MD\r[\s\d]{2}\r[\s\d\.\-]*\r)+
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "M") (re.++ (str.to_re "I") (re.++ (str.to_re "\u{0d}") (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (re.++ (str.to_re "\u{0d}") (re.++ (re.range "0" "9") (re.++ (str.to_re "\u{0d}") (re.++ ((_ re.loop 6 6) (re.union (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))) (re.++ (str.to_re "\u{0d}") (re.+ (re.++ (str.to_re "M") (re.++ (str.to_re "D") (re.++ (str.to_re "\u{0d}") (re.++ ((_ re.loop 2 2) (re.union (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.range "0" "9"))) (re.++ (str.to_re "\u{0d}") (re.++ (re.* (re.union (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.union (re.range "0" "9") (re.union (str.to_re ".") (str.to_re "-"))))) (str.to_re "\u{0d}"))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)