;test regex \*{1}[0-9]{1,7}\*{1}|[0-9]{1,8}\*{1}|\*{1}[0-9]{1,8}|[0-9]{9}
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.++ ((_ re.loop 1 1) (str.to_re "*")) (re.++ ((_ re.loop 1 7) (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re "*")))) (re.++ ((_ re.loop 1 8) (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re "*")))) (re.++ ((_ re.loop 1 1) (str.to_re "*")) ((_ re.loop 1 8) (re.range "0" "9")))) ((_ re.loop 9 9) (re.range "0" "9")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)