;test regex ^([a-z-]+-on-sale(?:,[a-z-]+-on-sale){0,})[\/]$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.++ (re.+ (re.union (re.range "a" "z") (str.to_re "-"))) (re.++ (str.to_re "-") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "-") (re.++ (str.to_re "s") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (re.* (re.++ (str.to_re ",") (re.++ (re.+ (re.union (re.range "a" "z") (str.to_re "-"))) (re.++ (str.to_re "-") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "-") (re.++ (str.to_re "s") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (str.to_re "e"))))))))))) ((_ re.loop 0 0) (re.++ (str.to_re ",") (re.++ (re.+ (re.union (re.range "a" "z") (str.to_re "-"))) (re.++ (str.to_re "-") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "-") (re.++ (str.to_re "s") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (str.to_re "e"))))))))))))))))))))) (str.to_re "/"))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)