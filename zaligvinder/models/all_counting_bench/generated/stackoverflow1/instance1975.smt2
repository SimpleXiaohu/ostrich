;test regex ^(\D[0-9]{2,6}\s\D{3,})|([0-9]{3,6}\s\D{3,})$
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "") (re.++ (re.diff re.allchar (re.range "0" "9")) (re.++ ((_ re.loop 2 6) (re.range "0" "9")) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.++ (re.* (re.diff re.allchar (re.range "0" "9"))) ((_ re.loop 3 3) (re.diff re.allchar (re.range "0" "9")))))))) (re.++ (re.++ ((_ re.loop 3 6) (re.range "0" "9")) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.++ (re.* (re.diff re.allchar (re.range "0" "9"))) ((_ re.loop 3 3) (re.diff re.allchar (re.range "0" "9")))))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)