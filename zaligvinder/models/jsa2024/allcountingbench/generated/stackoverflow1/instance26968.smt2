;test regex ^(?:\+?1)?([2-9]\d\d[2-9]\d{6})$\|^(4443)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.++ (str.to_re "") (re.++ (re.opt (re.++ (re.opt (str.to_re "+")) (str.to_re "1"))) (re.++ (re.range "2" "9") (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (re.++ (re.range "2" "9") ((_ re.loop 6 6) (re.range "0" "9")))))))) (re.++ (str.to_re "") (str.to_re "|"))) (re.++ (str.to_re "") (str.to_re "4443"))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)