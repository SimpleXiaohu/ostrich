;test regex 0*(?:3276[0-7]|327[0-5][0-9]|32[0-6][0-9]{2}|3[01][0-9]{3}|[12][0-9]{4}|[1-9][0-9]{1,3}|[0-9])
(declare-const X String)
(assert (str.in_re X (re.++ (re.* (str.to_re "0")) (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "3276") (re.range "0" "7")) (re.++ (str.to_re "327") (re.++ (re.range "0" "5") (re.range "0" "9")))) (re.++ (str.to_re "32") (re.++ (re.range "0" "6") ((_ re.loop 2 2) (re.range "0" "9"))))) (re.++ (str.to_re "3") (re.++ (str.to_re "01") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (str.to_re "12") ((_ re.loop 4 4) (re.range "0" "9")))) (re.++ (re.range "1" "9") ((_ re.loop 1 3) (re.range "0" "9")))) (re.range "0" "9")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)