;test regex ^(?:5[1-5][0-9]\d{1}|222[1-9]|2[3-6][0-9]\d{1}|27[01][0-9]|2720)([\ \-]?)\d{4}\1\d{4}\1\d{4}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.union (re.union (re.union (re.++ (str.to_re "5") (re.++ (re.range "1" "5") (re.++ (re.range "0" "9") ((_ re.loop 1 1) (re.range "0" "9"))))) (re.++ (str.to_re "222") (re.range "1" "9"))) (re.++ (str.to_re "2") (re.++ (re.range "3" "6") (re.++ (re.range "0" "9") ((_ re.loop 1 1) (re.range "0" "9")))))) (re.++ (str.to_re "27") (re.++ (str.to_re "01") (re.range "0" "9")))) (str.to_re "2720")) (re.++ (re.opt (re.union (str.to_re " ") (str.to_re "-"))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (_ re.reference 1) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (_ re.reference 1) ((_ re.loop 4 4) (re.range "0" "9"))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)