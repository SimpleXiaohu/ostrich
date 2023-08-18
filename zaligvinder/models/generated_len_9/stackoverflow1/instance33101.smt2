;test regex -{1}([a-z]){1}[ ]*[a-zA-Z0-9_ :\\\*.]*
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 1 1) (str.to_re "-")) (re.++ ((_ re.loop 1 1) (re.range "a" "z")) (re.++ (re.* (str.to_re " ")) (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "_") (re.union (str.to_re " ") (re.union (str.to_re ":") (re.union (str.to_re "\\") (re.union (str.to_re "*") (str.to_re ".")))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)