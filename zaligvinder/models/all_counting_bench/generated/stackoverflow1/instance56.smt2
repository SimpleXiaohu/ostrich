;test regex (?:[0-9A-Fa-f][0-9A-Fa-f][-:]){5}[0-9A-Fa-f][0-9A-Fa-f][-:]((?:[0-9A-Fa-f][0-9A-Fa-f][-:]){5}[0-9A-Fa-f][0-9A-Fa-f])
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 5 5) (re.++ (re.union (re.range "0" "9") (re.union (re.range "A" "F") (re.range "a" "f"))) (re.++ (re.union (re.range "0" "9") (re.union (re.range "A" "F") (re.range "a" "f"))) (re.union (str.to_re "-") (str.to_re ":"))))) (re.++ (re.union (re.range "0" "9") (re.union (re.range "A" "F") (re.range "a" "f"))) (re.++ (re.union (re.range "0" "9") (re.union (re.range "A" "F") (re.range "a" "f"))) (re.++ (re.union (str.to_re "-") (str.to_re ":")) (re.++ ((_ re.loop 5 5) (re.++ (re.union (re.range "0" "9") (re.union (re.range "A" "F") (re.range "a" "f"))) (re.++ (re.union (re.range "0" "9") (re.union (re.range "A" "F") (re.range "a" "f"))) (re.union (str.to_re "-") (str.to_re ":"))))) (re.++ (re.union (re.range "0" "9") (re.union (re.range "A" "F") (re.range "a" "f"))) (re.union (re.range "0" "9") (re.union (re.range "A" "F") (re.range "a" "f")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)