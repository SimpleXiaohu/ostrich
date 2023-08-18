;test regex ^01.{15}([0-9]{6})\s{1,2}08 \1 [0-9]{2}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (str.to_re "01") (re.++ ((_ re.loop 15 15) (re.diff re.allchar (str.to_re "\n"))) (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (re.++ ((_ re.loop 1 2) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re "08") (re.++ (str.to_re " ") (re.++ (_ re.reference 1) (re.++ (str.to_re " ") ((_ re.loop 2 2) (re.range "0" "9")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)