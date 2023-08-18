;test regex ^(([1-9]{1}(\d+)?)(\.\d+)?)|([0]\.(\d+)?([1-9]{1})(\d+)?)$
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "") (re.++ (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.opt (re.+ (re.range "0" "9")))) (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))))) (re.++ (re.++ (str.to_re "0") (re.++ (str.to_re ".") (re.++ (re.opt (re.+ (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.opt (re.+ (re.range "0" "9"))))))) (str.to_re "")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)