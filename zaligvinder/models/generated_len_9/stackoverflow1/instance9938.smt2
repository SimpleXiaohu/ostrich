;test regex \w{4}\d\_\w{2}\_\w{3}\_(20\d{2})(\d{2})(\d{2})[.csv|.CSV]+
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 4 4) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (re.range "0" "9") (re.++ (str.to_re "_") (re.++ ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (str.to_re "_") (re.++ ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (str.to_re "_") (re.++ (re.++ (str.to_re "20") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.+ (re.union (str.to_re ".") (re.union (str.to_re "c") (re.union (str.to_re "s") (re.union (str.to_re "v") (re.union (str.to_re "|") (re.union (str.to_re ".") (re.union (str.to_re "C") (re.union (str.to_re "S") (str.to_re "V"))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)