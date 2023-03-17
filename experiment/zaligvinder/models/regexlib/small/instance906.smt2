;test regex ^\s*([A-Za-z]{2,4}\.?\s*)?([&#39;\-A-Za-z]+\s*){1,2}([A-Za-z]+\.?\s*)?([&#39;\-A-Za-z]+\s*){1,2}(([jJsSrR]{2}\.)|([XIV]{1,6}))?\s*$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.opt (re.++ ((_ re.loop 2 4) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.++ (re.opt (str.to_re ".")) (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))))) (re.++ ((_ re.loop 1 2) (re.++ (re.+ (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re "-") (re.union (re.range "A" "Z") (re.range "a" "z")))))))) (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))))) (re.++ (re.opt (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.++ (re.opt (str.to_re ".")) (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))))) (re.++ ((_ re.loop 1 2) (re.++ (re.+ (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re "-") (re.union (re.range "A" "Z") (re.range "a" "z")))))))) (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))))) (re.++ (re.opt (re.union (re.++ ((_ re.loop 2 2) (re.union (str.to_re "j") (re.union (str.to_re "J") (re.union (str.to_re "s") (re.union (str.to_re "S") (re.union (str.to_re "r") (str.to_re "R"))))))) (str.to_re ".")) ((_ re.loop 1 6) (re.union (str.to_re "X") (re.union (str.to_re "I") (str.to_re "V")))))) (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)