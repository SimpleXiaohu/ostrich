;test regex sca_\w+?_rev\d.\d{1,3}\.jar
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "s") (re.++ (str.to_re "c") (re.++ (str.to_re "a") (re.++ (str.to_re "_") (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (str.to_re "_") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "v") (re.++ (re.range "0" "9") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ (str.to_re "j") (re.++ (str.to_re "a") (str.to_re "r"))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)