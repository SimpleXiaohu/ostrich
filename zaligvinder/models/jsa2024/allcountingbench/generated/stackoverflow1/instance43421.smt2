;test regex AFUA_[0-9A-Za-z]{7}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "A") (re.++ (str.to_re "F") (re.++ (str.to_re "U") (re.++ (str.to_re "A") (re.++ (str.to_re "_") ((_ re.loop 7 7) (re.union (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)