;test regex [a-zA-Z]\d{1}[s|S|f|F]\d{2}bscs[0-9]{4}
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (re.++ (re.union (str.to_re "s") (re.union (str.to_re "|") (re.union (str.to_re "S") (re.union (str.to_re "|") (re.union (str.to_re "f") (re.union (str.to_re "|") (str.to_re "F"))))))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re "b") (re.++ (str.to_re "s") (re.++ (str.to_re "c") (re.++ (str.to_re "s") ((_ re.loop 4 4) (re.range "0" "9"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)