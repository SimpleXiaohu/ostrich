;test regex \[[A-Z]{3,}_[A-Za-z]{3,}_\d+\]\s\|
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "[") (re.++ (re.++ (re.* (re.range "A" "Z")) ((_ re.loop 3 3) (re.range "A" "Z"))) (re.++ (str.to_re "_") (re.++ (re.++ (re.* (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 3 3) (re.union (re.range "A" "Z") (re.range "a" "z")))) (re.++ (str.to_re "_") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re "]") (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (str.to_re "|")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)