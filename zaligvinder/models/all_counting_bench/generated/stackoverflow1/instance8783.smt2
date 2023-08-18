;test regex [A-N|P-Z|1-9]{10}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 10 10) (re.union (re.range "A" "N") (re.union (str.to_re "|") (re.union (re.range "P" "Z") (re.union (str.to_re "|") (re.range "1" "9"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)