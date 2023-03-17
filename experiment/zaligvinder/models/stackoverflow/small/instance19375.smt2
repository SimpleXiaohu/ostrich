;test regex [\d]{1}\.[\d]{1}.+\*[A-Z]{3}
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "*") ((_ re.loop 3 3) (re.range "A" "Z")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)