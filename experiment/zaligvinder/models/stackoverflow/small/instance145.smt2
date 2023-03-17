;test regex ^([0-9A-F]{12}|(?:[0-9A-F]{2}:){5}[0-9A-F]{2}|(?:[0-9A-F]{2}-){5}[0-9A-F]{2}|(?:[0-9A-F]{4}\.){2}[0-9A-F]{4})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.union (re.union ((_ re.loop 12 12) (re.union (re.range "0" "9") (re.range "A" "F"))) (re.++ ((_ re.loop 5 5) (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to_re ":"))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "F"))))) (re.++ ((_ re.loop 5 5) (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to_re "-"))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "F"))))) (re.++ ((_ re.loop 2 2) (re.++ ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to_re "."))) ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "F")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)