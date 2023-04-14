;test regex "[a-zA-Z0-9][a-zA-Z0-9_.]+@[a-zA-Z0-9_]+\\.(com|[a-zA-Z]{2})$"
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "\u{22}") (re.++ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9"))) (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "_") (str.to_re ".")))))) (re.++ (str.to_re "@") (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.union (re.++ (str.to_re "c") (re.++ (str.to_re "o") (str.to_re "m"))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))))))))))) (re.++ (str.to_re "") (str.to_re "\u{22}")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)