;test regex (([A-Z]('[A-Z]|[a-z][A-Z])?[a-z]+[A-Z]?|&)\s)+(v\s)(([A-Z]('[A-Z]|[a-z][A-Z])?[a-z]+[A-Z]?|&)\s)+\[\d{4}\]\s[A-Z]+\s\d+
(declare-const X String)
(assert (str.in_re X (re.++ (re.+ (re.++ (re.union (re.++ (re.range "A" "Z") (re.++ (re.opt (re.union (re.++ (str.to_re "\u{27}") (re.range "A" "Z")) (re.++ (re.range "a" "z") (re.range "A" "Z")))) (re.++ (re.+ (re.range "a" "z")) (re.opt (re.range "A" "Z"))))) (str.to_re "&")) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))) (re.++ (re.++ (str.to_re "v") (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.+ (re.++ (re.union (re.++ (re.range "A" "Z") (re.++ (re.opt (re.union (re.++ (str.to_re "\u{27}") (re.range "A" "Z")) (re.++ (re.range "a" "z") (re.range "A" "Z")))) (re.++ (re.+ (re.range "a" "z")) (re.opt (re.range "A" "Z"))))) (str.to_re "&")) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))) (re.++ (str.to_re "[") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re "]") (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.++ (re.+ (re.range "A" "Z")) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.+ (re.range "0" "9")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)