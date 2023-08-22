;test regex "^([0-9a-zA-Z\.]+)(S[0-9]{2}E[0-9]{2}|[0-9]{4}|[0-9]{2}x[0-9]{2}|[0-9]{3})"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "") (re.++ (re.+ (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (str.to_re "."))))) (re.++ (re.union (re.union (re.union (re.++ (str.to_re "S") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re "E") ((_ re.loop 2 2) (re.range "0" "9"))))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re "x") ((_ re.loop 2 2) (re.range "0" "9"))))) ((_ re.loop 3 3) (re.range "0" "9"))) (str.to_re "\u{22}")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)