;test regex '-?[0-9]{1,3}.[0-9]{6},-?[0-9]{1,3}.[0-9]{6}'
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "\u{27}") (re.++ (re.opt (str.to_re "-")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (re.diff re.allchar (str.to_re "\n")) ((_ re.loop 6 6) (re.range "0" "9")))))) (re.++ (str.to_re ",") (re.++ (re.opt (str.to_re "-")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{27}")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)