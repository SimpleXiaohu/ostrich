;test regex (?:\$|)(\040)?(\d{0,8})|(\d{0,8})(\040)?(?:\$|)
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.union (re.++ (str.to_re "") (str.to_re "$")) (str.to_re "")) (re.++ (re.opt (str.to_re "\u{0020}")) ((_ re.loop 0 8) (re.range "0" "9")))) (re.++ ((_ re.loop 0 8) (re.range "0" "9")) (re.++ (re.opt (str.to_re "\u{0020}")) (re.union (re.++ (str.to_re "") (str.to_re "$")) (str.to_re "")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)