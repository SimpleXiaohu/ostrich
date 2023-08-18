;test regex ^P(\d+Y)?(\d+M)?(\d+D)?(T(((\d+H)(\d+M)?(\d+(\.\d{1,2})?S)?)|((\d+M)(\d+(\.\d{1,2})?S)?)|((\d+(\.\d{1,2})?S))))?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "P") (re.++ (re.opt (re.++ (re.+ (re.range "0" "9")) (str.to_re "Y"))) (re.++ (re.opt (re.++ (re.+ (re.range "0" "9")) (str.to_re "M"))) (re.++ (re.opt (re.++ (re.+ (re.range "0" "9")) (str.to_re "D"))) (re.opt (re.++ (str.to_re "T") (re.union (re.union (re.++ (re.++ (re.+ (re.range "0" "9")) (str.to_re "H")) (re.++ (re.opt (re.++ (re.+ (re.range "0" "9")) (str.to_re "M"))) (re.opt (re.++ (re.+ (re.range "0" "9")) (re.++ (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to_re "S")))))) (re.++ (re.++ (re.+ (re.range "0" "9")) (str.to_re "M")) (re.opt (re.++ (re.+ (re.range "0" "9")) (re.++ (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to_re "S")))))) (re.++ (re.+ (re.range "0" "9")) (re.++ (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to_re "S"))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)