;test regex .Replace("\\p{1,}[a-zA-Z0-9]{1,}", "");
(declare-const X String)
(assert (str.in_re X (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "\\") (re.++ (re.++ (re.* (str.to_re "p")) ((_ re.loop 1 1) (str.to_re "p"))) (re.++ (re.++ (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))) ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9"))))) (str.to_re "\u{22}"))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (str.to_re "\u{22}"))))) (str.to_re ";"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)