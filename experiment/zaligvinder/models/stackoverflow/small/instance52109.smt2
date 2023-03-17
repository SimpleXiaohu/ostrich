;test regex (\n[0-9]{3})[ 0-9]{4}([^\n]+(?:\n\s+[^\n]+)*)
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "\u{0a}") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 4 4) (re.union (str.to_re " ") (re.range "0" "9"))) (re.++ (re.+ (re.diff re.allchar (str.to_re "\u{0a}"))) (re.* (re.++ (str.to_re "\u{0a}") (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.+ (re.diff re.allchar (str.to_re "\u{0a}")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)