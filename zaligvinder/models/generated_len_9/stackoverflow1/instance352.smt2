;test regex (@"^(t)=[0-9]+,((\s[0-9A-F-a-f]{2}){8})")
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "@") (str.to_re "\u{22}")) (re.++ (str.to_re "") (re.++ (str.to_re "t") (re.++ (str.to_re "=") (re.+ (re.range "0" "9")))))) (re.++ (str.to_re ",") (re.++ ((_ re.loop 8 8) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.union (re.range "A" "F") (re.union (str.to_re "-") (re.range "a" "f"))))))) (str.to_re "\u{22}"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)