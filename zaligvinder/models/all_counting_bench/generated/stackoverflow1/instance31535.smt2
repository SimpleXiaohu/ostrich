;test regex [pP]([a-zA-Z0-9 +-]|(%20)){14,}0000
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (str.to_re "p") (str.to_re "P")) (re.++ (re.++ (re.* (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re " ") (re.union (str.to_re "+") (str.to_re "-")))))) (re.++ (str.to_re "%") (str.to_re "20")))) ((_ re.loop 14 14) (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re " ") (re.union (str.to_re "+") (str.to_re "-")))))) (re.++ (str.to_re "%") (str.to_re "20"))))) (str.to_re "0000")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)