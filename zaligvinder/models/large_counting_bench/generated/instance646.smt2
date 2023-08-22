;test regex ^[A-a-0-9,\!\-\?\""\. ]{3,999}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") ((_ re.loop 3 999) (re.union (re.range "A" "a") (re.union (str.to_re "-") (re.union (re.range "0" "9") (re.union (str.to_re ",") (re.union (str.to_re "!") (re.union (str.to_re "-") (re.union (str.to_re "?") (re.union (str.to_re "\u{22}") (re.union (str.to_re "\u{22}") (re.union (str.to_re ".") (str.to_re " "))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 200 (str.len X)))
(check-sat)
(get-model)