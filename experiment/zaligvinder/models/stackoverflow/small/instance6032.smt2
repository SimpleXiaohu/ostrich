;test regex ^(?:(?:[0-9]{2}[:\/,]){2}[0-9]{2,4}|am|pm)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.union (re.++ ((_ re.loop 2 2) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to_re ":") (re.union (str.to_re "/") (str.to_re ","))))) ((_ re.loop 2 4) (re.range "0" "9"))) (re.++ (str.to_re "a") (str.to_re "m"))) (re.++ (str.to_re "p") (str.to_re "m")))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)