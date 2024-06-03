;test regex [LA|BN].\d{8}
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (str.to_re "L") (re.union (str.to_re "A") (re.union (str.to_re "|") (re.union (str.to_re "B") (str.to_re "N"))))) (re.++ (re.diff re.allchar (str.to_re "\n")) ((_ re.loop 8 8) (re.range "0" "9"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)