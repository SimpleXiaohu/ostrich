;test regex "^(DEF) ?([0-9A-Z]{1,2})(?:(?:/)([0-9A-Z]{1,2}))?$"
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "") (re.++ (re.++ (str.to_re "D") (re.++ (str.to_re "E") (str.to_re "F"))) (re.++ (re.opt (str.to_re " ")) (re.++ ((_ re.loop 1 2) (re.union (re.range "0" "9") (re.range "A" "Z"))) (re.opt (re.++ (str.to_re "/") ((_ re.loop 1 2) (re.union (re.range "0" "9") (re.range "A" "Z")))))))))) (re.++ (str.to_re "") (str.to_re "\u{22}")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)