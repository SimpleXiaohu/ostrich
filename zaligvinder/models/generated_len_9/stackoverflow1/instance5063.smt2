;test regex ^([2-8])(\.[0-9]{1,3})?$|^(9)(\.[0-8][0-9]{0,2}|\.90{0,2})?$
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.++ (str.to_re "") (re.++ (re.range "2" "8") (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 3) (re.range "0" "9")))))) (str.to_re "")) (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "9") (re.opt (re.union (re.++ (str.to_re ".") (re.++ (re.range "0" "8") ((_ re.loop 0 2) (re.range "0" "9")))) (re.++ (str.to_re ".") ((_ re.loop 0 2) (str.to_re "90"))))))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)