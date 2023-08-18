;test regex @"\\(?:[""\\/bfnrt]|u[0-9A-Fa-f]{4})"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "@") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "\\") (re.++ (re.union (re.union (str.to_re "\u{22}") (re.union (str.to_re "\u{22}") (re.union (str.to_re "\\") (re.union (str.to_re "/") (re.union (str.to_re "b") (re.union (str.to_re "f") (re.union (str.to_re "n") (re.union (str.to_re "r") (str.to_re "t"))))))))) (re.++ (str.to_re "u") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.union (re.range "A" "F") (re.range "a" "f")))))) (str.to_re "\u{22}")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)