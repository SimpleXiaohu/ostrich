;test regex ^ ((?:ABC *|[$]{1,4})?[A-Za-z0-9/._:]+)\s*: ?
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (str.to_re " ") (re.++ (re.++ (re.opt (re.union (re.++ (str.to_re "A") (re.++ (str.to_re "B") (re.++ (str.to_re "C") (re.* (str.to_re " "))))) ((_ re.loop 1 4) (str.to_re "$")))) (re.+ (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "/") (re.union (str.to_re ".") (re.union (str.to_re "_") (str.to_re ":"))))))))) (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re ":") (re.opt (str.to_re " ")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)