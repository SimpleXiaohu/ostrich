;test regex ^((\(\d{2,3}\))|(\d{3}\-))?(\(0\d{2,3}\)|0\d{2,3}-)?[1-9]\d{6,7}(\-\d{1,4})?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.opt (re.union (re.++ (str.to_re "(") (re.++ ((_ re.loop 2 3) (re.range "0" "9")) (str.to_re ")"))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-")))) (re.++ (re.opt (re.union (re.++ (str.to_re "(") (re.++ (str.to_re "0") (re.++ ((_ re.loop 2 3) (re.range "0" "9")) (str.to_re ")")))) (re.++ (str.to_re "0") (re.++ ((_ re.loop 2 3) (re.range "0" "9")) (str.to_re "-"))))) (re.++ (re.range "1" "9") (re.++ ((_ re.loop 6 7) (re.range "0" "9")) (re.opt (re.++ (str.to_re "-") ((_ re.loop 1 4) (re.range "0" "9"))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)