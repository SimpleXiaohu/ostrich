;test regex &quot;^\s*((([\w-]+\.)+[\w-]+|([a-zA-Z]{1}|[\w-]{2,}))@(\w+\.)+[A-Za-z]{2,5}[?= ]?[?=,;]?[?= ]?)+?$&quot;
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "&") (re.++ (str.to_re "q") (re.++ (str.to_re "u") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (str.to_re ";")))))) (re.++ (str.to_re "") (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.+ (re.++ (re.union (re.++ (re.+ (re.++ (re.+ (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (str.to_re "-"))) (str.to_re "."))) (re.+ (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (str.to_re "-")))) (re.union ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.* (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (str.to_re "-"))) ((_ re.loop 2 2) (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (str.to_re "-")))))) (re.++ (str.to_re "@") (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (str.to_re "."))) (re.++ ((_ re.loop 2 5) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.++ (re.opt (re.union (str.to_re "?") (re.union (str.to_re "=") (str.to_re " ")))) (re.++ (re.opt (re.union (str.to_re "?") (re.union (str.to_re "=") (re.union (str.to_re ",") (str.to_re ";"))))) (re.opt (re.union (str.to_re "?") (re.union (str.to_re "=") (str.to_re " ")))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "&") (re.++ (str.to_re "q") (re.++ (str.to_re "u") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (str.to_re ";"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)