;test regex \[(\w.*|(M|V|P)\d{10}AB)\]
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "[") (re.++ (re.union (re.++ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (re.* (re.diff re.allchar (str.to_re "\n")))) (re.++ (re.union (re.union (str.to_re "M") (str.to_re "V")) (str.to_re "P")) (re.++ ((_ re.loop 10 10) (re.range "0" "9")) (re.++ (str.to_re "A") (str.to_re "B"))))) (str.to_re "]")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)