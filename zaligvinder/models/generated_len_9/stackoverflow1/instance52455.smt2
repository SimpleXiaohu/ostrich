;test regex $strip =~ s/\w+\}|\w+^#([0-9a-fA-F]{3})|([0-9a-fA-F]{6})//;
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ (str.to_re "") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re "~") (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (str.to_re "}")))))))))))))) (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (str.to_re "") (re.++ (str.to_re "#") ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))))))) (re.++ ((_ re.loop 6 6) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))) (re.++ (str.to_re "/") (re.++ (str.to_re "/") (str.to_re ";")))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)