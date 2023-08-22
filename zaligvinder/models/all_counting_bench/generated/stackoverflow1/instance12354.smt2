;test regex /youtu(?:.*\/v\/|.*v\=|\.be\/)([A-Za-z0-9_\-]{11})/
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "/") (re.++ (str.to_re "y") (re.++ (str.to_re "o") (re.++ (str.to_re "u") (re.++ (str.to_re "t") (re.++ (str.to_re "u") (re.++ (re.union (re.union (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "/") (re.++ (str.to_re "v") (str.to_re "/")))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "v") (str.to_re "=")))) (re.++ (str.to_re ".") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (str.to_re "/"))))) (re.++ ((_ re.loop 11 11) (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "_") (str.to_re "-")))))) (str.to_re "/")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)