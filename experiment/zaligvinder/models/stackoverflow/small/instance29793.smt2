;test regex ls | grep "\[([a-zA-Z]){0,}\]/g"
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "l") (re.++ (str.to_re "s") (str.to_re " "))) (re.++ (str.to_re " ") (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "[") (re.++ (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 0 0) (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.++ (str.to_re "]") (re.++ (str.to_re "/") (re.++ (str.to_re "g") (str.to_re "\u{22}"))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)