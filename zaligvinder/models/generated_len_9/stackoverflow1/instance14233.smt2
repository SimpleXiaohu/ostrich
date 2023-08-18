;test regex ^(?:4\d{3}|5[1-5]\d{2}|6011|3[47]\d{2})([- ]?)\d{4}\1\d{4}\1\d{4}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.union (re.union (re.++ (str.to_re "4") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "5") (re.++ (re.range "1" "5") ((_ re.loop 2 2) (re.range "0" "9"))))) (str.to_re "6011")) (re.++ (str.to_re "3") (re.++ (str.to_re "47") ((_ re.loop 2 2) (re.range "0" "9"))))) (re.++ (re.opt (re.union (str.to_re "-") (str.to_re " "))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (_ re.reference 1) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (_ re.reference 1) ((_ re.loop 4 4) (re.range "0" "9"))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)