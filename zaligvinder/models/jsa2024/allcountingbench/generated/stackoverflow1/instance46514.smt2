;test regex ^.*?(?:Keywords(?::|-|--)?)\K((?:(?:\s\w+){1,2}[,.;|])+(?:\s\w+){1,2}).*$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.++ (str.to_re "K") (re.++ (str.to_re "e") (re.++ (str.to_re "y") (re.++ (str.to_re "w") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "d") (re.++ (str.to_re "s") (re.opt (re.union (re.union (str.to_re ":") (str.to_re "-")) (re.++ (str.to_re "-") (str.to_re "-")))))))))))) (re.++ (str.to_re "K") (re.++ (re.++ (re.+ (re.++ ((_ re.loop 1 2) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))))) (re.union (str.to_re ",") (re.union (str.to_re ".") (re.union (str.to_re ";") (str.to_re "|")))))) ((_ re.loop 1 2) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))))) (re.* (re.diff re.allchar (str.to_re "\n")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)