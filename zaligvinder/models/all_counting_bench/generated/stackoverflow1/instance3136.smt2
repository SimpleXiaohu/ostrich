;test regex key><val>([a-fA-F0-9]{4})<
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "k") (re.++ (str.to_re "e") (re.++ (str.to_re "y") (re.++ (str.to_re ">") (re.++ (str.to_re "<") (re.++ (str.to_re "v") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re ">") (re.++ ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.union (re.range "A" "F") (re.range "0" "9")))) (str.to_re "<")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)