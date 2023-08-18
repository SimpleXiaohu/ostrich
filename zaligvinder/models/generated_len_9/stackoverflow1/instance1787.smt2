;test regex "[NQKB]?(\w{1,2})[-x](\w{1,2})[+#]?"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (re.opt (re.union (str.to_re "N") (re.union (str.to_re "Q") (re.union (str.to_re "K") (str.to_re "B"))))) (re.++ ((_ re.loop 1 2) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (re.union (str.to_re "-") (str.to_re "x")) (re.++ ((_ re.loop 1 2) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (re.opt (re.union (str.to_re "+") (str.to_re "#"))) (str.to_re "\u{22}")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)