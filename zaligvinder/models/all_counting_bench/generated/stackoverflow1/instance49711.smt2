;test regex "(\d+,?\s+\d{1})\.xls,\w+\.exe"
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "\u{22}") (re.++ (re.++ (re.+ (re.range "0" "9")) (re.++ (re.opt (str.to_re ",")) (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) ((_ re.loop 1 1) (re.range "0" "9"))))) (re.++ (str.to_re ".") (re.++ (str.to_re "x") (re.++ (str.to_re "l") (str.to_re "s")))))) (re.++ (str.to_re ",") (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (str.to_re ".") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "e") (str.to_re "\u{22}"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)