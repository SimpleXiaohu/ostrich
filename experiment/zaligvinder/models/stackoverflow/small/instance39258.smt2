;test regex "_ [ 0-9]{10}+ {1}+[ 0-9]{10}+ {2}+[ 0-9]{6}+ {2}[ 0-9]{2}"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "_") (re.++ (str.to_re " ") (re.++ (re.+ ((_ re.loop 10 10) (re.union (str.to_re " ") (re.range "0" "9")))) (re.++ (re.+ ((_ re.loop 1 1) (str.to_re " "))) (re.++ (re.+ ((_ re.loop 10 10) (re.union (str.to_re " ") (re.range "0" "9")))) (re.++ (re.+ ((_ re.loop 2 2) (str.to_re " "))) (re.++ (re.+ ((_ re.loop 6 6) (re.union (str.to_re " ") (re.range "0" "9")))) (re.++ ((_ re.loop 2 2) (str.to_re " ")) (re.++ ((_ re.loop 2 2) (re.union (str.to_re " ") (re.range "0" "9"))) (str.to_re "\u{22}")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)