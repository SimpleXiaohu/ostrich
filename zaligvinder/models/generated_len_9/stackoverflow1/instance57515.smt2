;test regex [-+]?([0-90-9]+((\,([0-90-9]{2,}))*\,([0-90-9]{3}))*)?(\.[0-90-9]*)?
(declare-const X String)
(assert (str.in_re X (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.++ (re.opt (re.++ (re.+ (re.union (re.range "0" "90") (re.union (str.to_re "-") (str.to_re "9")))) (re.* (re.++ (re.* (re.++ (str.to_re ",") (re.++ (re.* (re.union (re.range "0" "90") (re.union (str.to_re "-") (str.to_re "9")))) ((_ re.loop 2 2) (re.union (re.range "0" "90") (re.union (str.to_re "-") (str.to_re "9"))))))) (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.union (re.range "0" "90") (re.union (str.to_re "-") (str.to_re "9"))))))))) (re.opt (re.++ (str.to_re ".") (re.* (re.union (re.range "0" "90") (re.union (str.to_re "-") (str.to_re "9"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)