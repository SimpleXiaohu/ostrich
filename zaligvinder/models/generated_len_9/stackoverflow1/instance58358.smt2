;test regex (\d{2}-\d{2}\s\d{4})|(\d+(?:\.\d+)?\s(?:GiB|MiB|TiB|KiB))
(declare-const X String)
(assert (str.in_re X (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) ((_ re.loop 4 4) (re.range "0" "9")))))) (re.++ (re.+ (re.range "0" "9")) (re.++ (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.union (re.union (re.union (re.++ (str.to_re "G") (re.++ (str.to_re "i") (str.to_re "B"))) (re.++ (str.to_re "M") (re.++ (str.to_re "i") (str.to_re "B")))) (re.++ (str.to_re "T") (re.++ (str.to_re "i") (str.to_re "B")))) (re.++ (str.to_re "K") (re.++ (str.to_re "i") (str.to_re "B"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)