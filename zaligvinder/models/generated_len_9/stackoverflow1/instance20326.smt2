;test regex ^(([1-9]\d{0,2}(((\.\d{3})*(,\d{2})?)|((,\d{3})*(\.\d{2})?)))|(0(\.|,)\d{1,2})|([1-9]\d+((\.|,)\d{1,2})?))$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.union (re.++ (re.range "1" "9") (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.union (re.++ (re.* (re.++ (str.to_re ".") ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to_re ",") ((_ re.loop 2 2) (re.range "0" "9"))))) (re.++ (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9")))))))) (re.++ (str.to_re "0") (re.++ (re.union (str.to_re ".") (str.to_re ",")) ((_ re.loop 1 2) (re.range "0" "9"))))) (re.++ (re.range "1" "9") (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (re.union (str.to_re ".") (str.to_re ",")) ((_ re.loop 1 2) (re.range "0" "9")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)