;test regex ^.+-kb[0-9]{6,}-(?:v[0-9]+-)?x[0-9]+\.exe$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "-") (re.++ (str.to_re "k") (re.++ (str.to_re "b") (re.++ (re.++ (re.* (re.range "0" "9")) ((_ re.loop 6 6) (re.range "0" "9"))) (re.++ (str.to_re "-") (re.++ (re.opt (re.++ (str.to_re "v") (re.++ (re.+ (re.range "0" "9")) (str.to_re "-")))) (re.++ (str.to_re "x") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (str.to_re "e")))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)