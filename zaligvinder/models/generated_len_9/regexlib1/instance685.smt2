;test regex (^N/A$)|(^[-]?(\d+)(\.\d{0,3})?$)|(^[-]?(\d{1,3},(\d{3},)*\d{3}(\.\d{1,3})?|\d{1,3}(\.\d{1,3})?)$)
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "N") (re.++ (str.to_re "/") (str.to_re "A")))) (str.to_re "")) (re.++ (re.++ (str.to_re "") (re.++ (re.opt (str.to_re "-")) (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 0 3) (re.range "0" "9"))))))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (re.++ (re.opt (str.to_re "-")) (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (str.to_re ",") (re.++ (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ","))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")))))))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")))))))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)