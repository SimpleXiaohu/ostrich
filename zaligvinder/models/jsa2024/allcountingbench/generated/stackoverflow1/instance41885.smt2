;test regex ([0-9]{1,2}\\.[0-9]{3}\\s){12}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 12 12) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "\\") (str.to_re "s")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)