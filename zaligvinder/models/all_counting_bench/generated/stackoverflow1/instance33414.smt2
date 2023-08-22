;test regex "^((100|[0-9]{1,2})M\s*)?((100|[0-9]{1,2})d\s*)?((100|[0-9]{1,2})h\s*)?((100|[0-9]{1,2})m\s*)?$"
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "") (re.++ (re.opt (re.++ (re.union (str.to_re "100") ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (str.to_re "M") (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))))) (re.++ (re.opt (re.++ (re.union (str.to_re "100") ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (str.to_re "d") (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))))) (re.++ (re.opt (re.++ (re.union (str.to_re "100") ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (str.to_re "h") (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))))) (re.opt (re.++ (re.union (str.to_re "100") ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (str.to_re "m") (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))))))))))) (re.++ (str.to_re "") (str.to_re "\u{22}")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)