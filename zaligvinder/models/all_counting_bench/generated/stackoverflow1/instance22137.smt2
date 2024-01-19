;test regex ^[a-zA-Z0-9]+\s(INV|FINAL)\s([0,1]?\d{1}\s(([0-2]?\d{1})|([3][0,1]{1}))\s(([1]{1}[9]{1}[9]{1}\d{1})|([2-9]{1}\d{3})))(\s{1})\d+$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.++ (re.union (re.++ (str.to_re "I") (re.++ (str.to_re "N") (str.to_re "V"))) (re.++ (str.to_re "F") (re.++ (str.to_re "I") (re.++ (str.to_re "N") (re.++ (str.to_re "A") (str.to_re "L")))))) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.++ (re.++ (re.opt (re.union (str.to_re "0") (re.union (str.to_re ",") (str.to_re "1")))) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.++ (re.union (re.++ (re.opt (re.range "0" "2")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to_re "3") ((_ re.loop 1 1) (re.union (str.to_re "0") (re.union (str.to_re ",") (str.to_re "1")))))) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.union (re.++ ((_ re.loop 1 1) (str.to_re "1")) (re.++ ((_ re.loop 1 1) (str.to_re "9")) (re.++ ((_ re.loop 1 1) (str.to_re "9")) ((_ re.loop 1 1) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) (re.range "2" "9")) ((_ re.loop 3 3) (re.range "0" "9"))))))))) (re.++ ((_ re.loop 1 1) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.+ (re.range "0" "9"))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)