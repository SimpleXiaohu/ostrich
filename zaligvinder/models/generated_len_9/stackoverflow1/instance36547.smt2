;test regex (\w+)(-?)_(\d{4}\d{2}\d{2})(\w+)?(\.csv|\.dat|\.txt)?
(declare-const X String)
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (re.opt (str.to_re "-")) (re.++ (str.to_re "_") (re.++ (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (re.opt (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))) (re.opt (re.union (re.union (re.++ (str.to_re ".") (re.++ (str.to_re "c") (re.++ (str.to_re "s") (str.to_re "v")))) (re.++ (str.to_re ".") (re.++ (str.to_re "d") (re.++ (str.to_re "a") (str.to_re "t"))))) (re.++ (str.to_re ".") (re.++ (str.to_re "t") (re.++ (str.to_re "x") (str.to_re "t")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)