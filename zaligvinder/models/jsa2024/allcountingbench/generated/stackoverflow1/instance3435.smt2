;test regex ^([data:image/png;base64,][A-Za-z0-9+/]{4})*([A-Za-z0-9+/]{4}|[A-Za-z0-9+/]{3}=|[A-Za-z0-9+/]{2}==)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.* (re.++ (re.union (str.to_re "d") (re.union (str.to_re "a") (re.union (str.to_re "t") (re.union (str.to_re "a") (re.union (str.to_re ":") (re.union (str.to_re "i") (re.union (str.to_re "m") (re.union (str.to_re "a") (re.union (str.to_re "g") (re.union (str.to_re "e") (re.union (str.to_re "/") (re.union (str.to_re "p") (re.union (str.to_re "n") (re.union (str.to_re "g") (re.union (str.to_re ";") (re.union (str.to_re "b") (re.union (str.to_re "a") (re.union (str.to_re "s") (re.union (str.to_re "e") (re.union (str.to_re "64") (str.to_re ","))))))))))))))))))))) ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "+") (str.to_re "/")))))))) (re.union (re.union ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "+") (str.to_re "/")))))) (re.++ ((_ re.loop 3 3) (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "+") (str.to_re "/")))))) (str.to_re "="))) (re.++ ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "+") (str.to_re "/")))))) (re.++ (str.to_re "=") (str.to_re "=")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)