;test regex 'y[0-9]{2,4}m[0-9]{1,2}d[0-9]{1,2}\w*'
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "y") (re.++ ((_ re.loop 2 4) (re.range "0" "9")) (re.++ (str.to_re "m") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re "d") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (str.to_re "\u{27}")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)