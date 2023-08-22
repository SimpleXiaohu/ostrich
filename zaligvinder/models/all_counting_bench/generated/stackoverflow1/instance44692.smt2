;test regex ^.{2}((\d{4})(\d{6})(\d*)$)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ ((_ re.loop 2 2) (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (re.* (re.range "0" "9")))) (str.to_re ""))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)