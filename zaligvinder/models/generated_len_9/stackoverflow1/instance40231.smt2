;test regex (^#[0-9A-F]{6}$)|(^#[0-9A-F]{3}$)|^\0*$
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "#") ((_ re.loop 6 6) (re.union (re.range "0" "9") (re.range "A" "F"))))) (str.to_re "")) (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "#") ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "A" "F"))))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (re.* (_ re.reference 0))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)