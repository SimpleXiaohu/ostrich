;test regex ^(org-[\-\.:_a-zA-Z0-9]{1,16}/)*org-[\-\.:_a-zA-Z0-9]{1,16}/ls-
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.* (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "g") (re.++ (str.to_re "-") (re.++ ((_ re.loop 1 16) (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re ":") (re.union (str.to_re "_") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))))))) (str.to_re "/"))))))) (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "g") (re.++ (str.to_re "-") (re.++ ((_ re.loop 1 16) (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re ":") (re.union (str.to_re "_") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))))))) (re.++ (str.to_re "/") (re.++ (str.to_re "l") (re.++ (str.to_re "s") (str.to_re "-")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)