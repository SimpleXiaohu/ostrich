;test regex [12][0-9]{3}-[01][0-9]-[0-3][0-9]\s[0-2][0-9]:[0-5][0-9]:[0-5][0-9]
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "12") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ (str.to_re "01") (re.++ (re.range "0" "9") (re.++ (str.to_re "-") (re.++ (re.range "0" "3") (re.++ (re.range "0" "9") (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.++ (re.range "0" "2") (re.++ (re.range "0" "9") (re.++ (str.to_re ":") (re.++ (re.range "0" "5") (re.++ (re.range "0" "9") (re.++ (str.to_re ":") (re.++ (re.range "0" "5") (re.range "0" "9")))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)