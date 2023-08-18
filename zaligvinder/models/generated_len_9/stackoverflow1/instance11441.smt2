;test regex ^([a-zA-Z0-9.]*)\.S([0-9]{1,2})E([0-9]{1,2}).*$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "."))))) (re.++ (str.to_re ".") (re.++ (str.to_re "S") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re "E") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.* (re.diff re.allchar (str.to_re "\n")))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)