;test regex \A([0-9a-zA-Z_]{1,15})|(@([0-9a-zA-Z_]{1,15}))\Z
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "A") ((_ re.loop 1 15) (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (str.to_re "_")))))) (re.++ (re.++ (str.to_re "@") ((_ re.loop 1 15) (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (str.to_re "_")))))) (str.to_re "Z")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)