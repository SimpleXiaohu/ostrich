;test regex \?symfony=\w{32}("|')
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "?") (re.++ (str.to_re "s") (re.++ (str.to_re "y") (re.++ (str.to_re "m") (re.++ (str.to_re "f") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "y") (re.++ (str.to_re "=") (re.++ ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.union (str.to_re "\u{22}") (str.to_re "\u{27}"))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)