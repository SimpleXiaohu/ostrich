;test regex ^-?([0-9]|[1-8][0-9]|90)\.{1}\d{4}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.opt (str.to_re "-")) (re.++ (re.union (re.union (re.range "0" "9") (re.++ (re.range "1" "8") (re.range "0" "9"))) (str.to_re "90")) (re.++ ((_ re.loop 1 1) (str.to_re ".")) ((_ re.loop 4 4) (re.range "0" "9")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)