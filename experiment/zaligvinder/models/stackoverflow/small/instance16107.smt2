;test regex (\d[\d_v]{2,}\d).*?_web(\.xlsx?)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.range "0" "9") (re.++ (re.++ (re.* (re.union (re.range "0" "9") (re.union (str.to_re "_") (str.to_re "v")))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.union (str.to_re "_") (str.to_re "v"))))) (re.range "0" "9"))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "_") (re.++ (str.to_re "w") (re.++ (str.to_re "e") (re.++ (str.to_re "b") (re.++ (str.to_re ".") (re.++ (str.to_re "x") (re.++ (str.to_re "l") (re.++ (str.to_re "s") (re.opt (str.to_re "x")))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)