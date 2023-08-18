;test regex (\d{1,2})/10 ([A-Za-z]{1,2}\d\w?)
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re "/") (re.++ (str.to_re "10") (re.++ (str.to_re " ") (re.++ ((_ re.loop 1 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.++ (re.range "0" "9") (re.opt (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)