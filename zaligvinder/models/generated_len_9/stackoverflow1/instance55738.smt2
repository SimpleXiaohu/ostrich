;test regex ((\\$?(([0-9]{0,1})?\\.[0-9]{1,2}))|(\\$?([1-9]{1}[0-9]{0,2}([,][0-9]{3})*)(\\.[0-9]{1,2})?))
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "\\") (re.++ (re.opt (str.to_re "")) (re.++ (re.opt ((_ re.loop 0 1) (re.range "0" "9"))) (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) ((_ re.loop 1 2) (re.range "0" "9"))))))) (re.++ (str.to_re "\\") (re.++ (re.opt (str.to_re "")) (re.++ (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")))))) (re.opt (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) ((_ re.loop 1 2) (re.range "0" "9")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)