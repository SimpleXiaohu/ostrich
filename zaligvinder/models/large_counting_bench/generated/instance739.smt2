;test regex -([0-9a-f]{7,128})\.[^.]+\z
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "-") (re.++ ((_ re.loop 7 128) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.++ (str.to_re ".") (re.++ (re.+ (re.diff re.allchar (str.to_re "."))) (str.to_re "z")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 200 (str.len X)))
(check-sat)
(get-model)