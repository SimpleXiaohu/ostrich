;test regex (^|\s)(?:(?:[1-9]\d?\d?([ \,\.]?\d{3})*)|0)(?:[\.\,]\d+)($|\s)?
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (str.to_re "") (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.union (re.++ (re.range "1" "9") (re.++ (re.opt (re.range "0" "9")) (re.++ (re.opt (re.range "0" "9")) (re.* (re.++ (re.opt (re.union (str.to_re " ") (re.union (str.to_re ",") (str.to_re ".")))) ((_ re.loop 3 3) (re.range "0" "9"))))))) (str.to_re "0")) (re.++ (re.++ (re.union (str.to_re ".") (str.to_re ",")) (re.+ (re.range "0" "9"))) (re.opt (re.union (str.to_re "") (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)