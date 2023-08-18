;test regex ([1-9])(\1|w){2,}|w([0-9](\3|w)|w[0-9])
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.range "1" "9") (re.++ (re.* (re.union (_ re.reference 1) (str.to_re "w"))) ((_ re.loop 2 2) (re.union (_ re.reference 1) (str.to_re "w"))))) (re.++ (str.to_re "w") (re.union (re.++ (re.range "0" "9") (re.union (_ re.reference 3) (str.to_re "w"))) (re.++ (str.to_re "w") (re.range "0" "9")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)