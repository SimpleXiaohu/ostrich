;test regex (,[A-Za-z0-9\.|-|_]*[@]{1}[A-Za-z0-9\.|-|_]*[.]{1}[a-z]{2,5})*?
(declare-const X String)
(assert (str.in_re X (re.* (re.++ (str.to_re ",") (re.++ (re.* (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re ".") (re.union (str.to_re "|") (re.union (str.to_re "-") (re.union (str.to_re "|") (str.to_re "_"))))))))) (re.++ ((_ re.loop 1 1) (str.to_re "@")) (re.++ (re.* (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re ".") (re.union (str.to_re "|") (re.union (str.to_re "-") (re.union (str.to_re "|") (str.to_re "_"))))))))) (re.++ ((_ re.loop 1 1) (str.to_re ".")) ((_ re.loop 2 5) (re.range "a" "z"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)