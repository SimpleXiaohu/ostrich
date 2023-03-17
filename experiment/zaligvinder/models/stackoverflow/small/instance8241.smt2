;test regex @"\|([A-Z]{3})\^([A-Z]{1})([0-9]{2})\|"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "@") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "|") (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (re.++ (str.to_re "^") (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re "|") (str.to_re "\u{22}")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)