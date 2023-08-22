;test regex .+[a-zA-Z0-9]{17,500}.+(\r\n)
(declare-const X String)
(assert (str.in_re X (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ ((_ re.loop 17 500) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))) (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "\u{0d}") (str.to_re "\u{0a}")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 200 (str.len X)))
(check-sat)
(get-model)