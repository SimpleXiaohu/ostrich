;test regex "((C:GSM\d+&T:GSM\d+;(\s){0,}){1,})"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (re.++ (re.* (re.++ (str.to_re "C") (re.++ (str.to_re ":") (re.++ (str.to_re "G") (re.++ (str.to_re "S") (re.++ (str.to_re "M") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re "&") (re.++ (str.to_re "T") (re.++ (str.to_re ":") (re.++ (str.to_re "G") (re.++ (str.to_re "S") (re.++ (str.to_re "M") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re ";") (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) ((_ re.loop 0 0) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))))))))))))))))))) ((_ re.loop 1 1) (re.++ (str.to_re "C") (re.++ (str.to_re ":") (re.++ (str.to_re "G") (re.++ (str.to_re "S") (re.++ (str.to_re "M") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re "&") (re.++ (str.to_re "T") (re.++ (str.to_re ":") (re.++ (str.to_re "G") (re.++ (str.to_re "S") (re.++ (str.to_re "M") (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re ";") (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) ((_ re.loop 0 0) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))))))))))))))))))) (str.to_re "\u{22}")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)