;test regex ^[http|ftp|wap|https]{3,5}:\//\www\.\w*\.[com|net]{2,3}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 3 5) (re.union (str.to_re "h") (re.union (str.to_re "t") (re.union (str.to_re "t") (re.union (str.to_re "p") (re.union (str.to_re "|") (re.union (str.to_re "f") (re.union (str.to_re "t") (re.union (str.to_re "p") (re.union (str.to_re "|") (re.union (str.to_re "w") (re.union (str.to_re "a") (re.union (str.to_re "p") (re.union (str.to_re "|") (re.union (str.to_re "h") (re.union (str.to_re "t") (re.union (str.to_re "t") (re.union (str.to_re "p") (str.to_re "s"))))))))))))))))))) (re.++ (str.to_re ":") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (re.++ (str.to_re "w") (re.++ (str.to_re "w") (re.++ (str.to_re ".") (re.++ (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (str.to_re ".") ((_ re.loop 2 3) (re.union (str.to_re "c") (re.union (str.to_re "o") (re.union (str.to_re "m") (re.union (str.to_re "|") (re.union (str.to_re "n") (re.union (str.to_re "e") (str.to_re "t"))))))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)