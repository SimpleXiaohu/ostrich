;test regex ^([a-z0-9-_.-]{4,20})@([a-z-_]{2,5})\\.([a-z-]{2,5})(\\.[a-z-]{2,5})?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 4 20) (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (re.union (str.to_re "_") (re.union (str.to_re ".") (str.to_re "-"))))))) (re.++ (str.to_re "@") (re.++ ((_ re.loop 2 5) (re.union (re.range "a" "z") (re.union (str.to_re "-") (str.to_re "_")))) (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ ((_ re.loop 2 5) (re.union (re.range "a" "z") (str.to_re "-"))) (re.opt (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) ((_ re.loop 2 5) (re.union (re.range "a" "z") (str.to_re "-"))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)