;test regex \s*(?:([a-zA-Z0-9\-\_\']+)|([\:\;\=\[\]\{\}\(\)\<3dDpP]{2}))\s*
(declare-const X String)
(assert (str.in_re X (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.union (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (re.union (str.to_re "_") (str.to_re "\u{27}"))))))) ((_ re.loop 2 2) (re.union (str.to_re ":") (re.union (str.to_re ";") (re.union (str.to_re "=") (re.union (str.to_re "[") (re.union (str.to_re "]") (re.union (str.to_re "{") (re.union (str.to_re "}") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "<") (re.union (str.to_re "3") (re.union (str.to_re "d") (re.union (str.to_re "D") (re.union (str.to_re "p") (str.to_re "P"))))))))))))))))) (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)