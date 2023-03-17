;test regex ^([0-9a-z\.]+)\.(?:S[0-9]{2}E[0-9]{2}|[0-9]{3,4}|[0-9]{2}(?:x[0-9]+)?)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.+ (re.union (re.range "0" "9") (re.union (re.range "a" "z") (str.to_re ".")))) (re.++ (str.to_re ".") (re.union (re.union (re.++ (str.to_re "S") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re "E") ((_ re.loop 2 2) (re.range "0" "9"))))) ((_ re.loop 3 4) (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.++ (str.to_re "x") (re.+ (re.range "0" "9"))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)