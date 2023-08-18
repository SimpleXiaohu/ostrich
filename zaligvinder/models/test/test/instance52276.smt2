;test regex ^(|[0-9A-Z]{4}| {1}[0-9A-Z]{3}| {2}[0-9A-Z]{2}| {3}[0-9A-Z]{1})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (str.to_re "") (re.++ (str.to_re "") (re.union (re.union (re.union ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (re.++ ((_ re.loop 1 1) (str.to_re " ")) ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "A" "Z"))))) (re.++ ((_ re.loop 2 2) (str.to_re " ")) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z"))))) (re.++ ((_ re.loop 3 3) (str.to_re " ")) ((_ re.loop 1 1) (re.union (re.range "0" "9") (re.range "A" "Z")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)