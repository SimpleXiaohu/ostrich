;test regex (090052fb[0-9A-Za-z]{8})\t\t
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "090052") (re.++ (str.to_re "f") (re.++ (str.to_re "b") ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z"))))))) (re.++ (str.to_re "\u{09}") (str.to_re "\u{09}")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)