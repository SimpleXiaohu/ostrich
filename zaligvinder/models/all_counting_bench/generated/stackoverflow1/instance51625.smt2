;test regex ^(10{2}(?:,0{2})?|[1-9]?\d(?:,\d{2})?) %$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.++ ((_ re.loop 2 2) (str.to_re "10")) (re.opt (re.++ (str.to_re ",") ((_ re.loop 2 2) (str.to_re "0"))))) (re.++ (re.opt (re.range "1" "9")) (re.++ (re.range "0" "9") (re.opt (re.++ (str.to_re ",") ((_ re.loop 2 2) (re.range "0" "9"))))))) (re.++ (str.to_re " ") (str.to_re "%")))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)