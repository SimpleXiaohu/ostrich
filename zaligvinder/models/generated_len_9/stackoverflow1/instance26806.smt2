;test regex ^"(\d{4}-(?:0?[1-9]|1[012])-(?:30|31|[12]\d|0?[1-9]))"\^\^xsd:date$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "\u{22}") (re.++ (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (str.to_re "012"))) (re.++ (str.to_re "-") (re.union (re.union (re.union (str.to_re "30") (str.to_re "31")) (re.++ (str.to_re "12") (re.range "0" "9"))) (re.++ (re.opt (str.to_re "0")) (re.range "1" "9"))))))) (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "^") (re.++ (str.to_re "^") (re.++ (str.to_re "x") (re.++ (str.to_re "s") (re.++ (str.to_re "d") (re.++ (str.to_re ":") (re.++ (str.to_re "d") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (str.to_re "e")))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)