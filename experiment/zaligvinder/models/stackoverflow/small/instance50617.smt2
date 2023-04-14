;test regex ^(?:\t| {4})\K(\$\w+)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.union (str.to_re "\u{09}") ((_ re.loop 4 4) (str.to_re " "))) (re.++ (str.to_re "K") (re.++ (str.to_re "$") (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)