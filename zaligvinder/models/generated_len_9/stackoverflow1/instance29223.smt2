;test regex ((8|\+7)[\- ]?)((\(?9\d{2}\)?[\- ]?)[\d\- ]{7,10})?[\d\- ]{10,10}
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.union (str.to_re "8") (re.++ (str.to_re "+") (str.to_re "7"))) (re.opt (re.union (str.to_re "-") (str.to_re " ")))) (re.++ (re.opt (re.++ (re.++ (re.opt (str.to_re "(")) (re.++ (str.to_re "9") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.opt (str.to_re ")")) (re.opt (re.union (str.to_re "-") (str.to_re " "))))))) ((_ re.loop 7 10) (re.union (re.range "0" "9") (re.union (str.to_re "-") (str.to_re " ")))))) ((_ re.loop 10 10) (re.union (re.range "0" "9") (re.union (str.to_re "-") (str.to_re " "))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)