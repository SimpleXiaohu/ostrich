;test regex ([a-zA-Z0-9_]{1,}[ \r\v\n\t\f]{0,}){0,}
(declare-const X String)
(assert (str.in_re X (re.++ (re.* (re.++ (re.++ (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))) (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{0B}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) ((_ re.loop 0 0) (re.union (str.to_re " ") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{0B}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))))) ((_ re.loop 0 0) (re.++ (re.++ (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))) (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{0B}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) ((_ re.loop 0 0) (re.union (str.to_re " ") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{0B}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)