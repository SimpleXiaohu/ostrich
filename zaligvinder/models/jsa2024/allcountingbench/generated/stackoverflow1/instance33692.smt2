;test regex ~\$?\{[\w-]+(?::[a-z]*)*\}|<[a-z]+:[a-z]+\s*(?:\s[a-z]+=\"[a-z\d\s]+\"){0,5}\s*/>~i
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "~") (re.++ (re.opt (str.to_re "$")) (re.++ (str.to_re "{") (re.++ (re.+ (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (str.to_re "-"))) (re.++ (re.* (re.++ (str.to_re ":") (re.* (re.range "a" "z")))) (str.to_re "}")))))) (re.++ (str.to_re "<") (re.++ (re.+ (re.range "a" "z")) (re.++ (str.to_re ":") (re.++ (re.+ (re.range "a" "z")) (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ ((_ re.loop 0 5) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.++ (re.+ (re.range "a" "z")) (re.++ (str.to_re "=") (re.++ (str.to_re "\u{22}") (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))))) (str.to_re "\u{22}"))))))) (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re "/") (re.++ (str.to_re ">") (re.++ (str.to_re "~") (str.to_re "i"))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)