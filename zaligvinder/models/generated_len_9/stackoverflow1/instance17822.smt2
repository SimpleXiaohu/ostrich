;test regex s/\v^([^|]+\|){9}\zs(\d{4})-(\d{2}-\d{2})/\3-\2/
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "s") (re.++ (str.to_re "/") (str.to_re "\u{0B}"))) (re.++ (str.to_re "") (re.++ ((_ re.loop 9 9) (re.++ (re.+ (re.diff re.allchar (str.to_re "|"))) (str.to_re "|"))) (re.++ (str.to_re "z") (re.++ (str.to_re "s") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re "-") ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (str.to_re "/") (re.++ (_ re.reference 3) (re.++ (str.to_re "-") (re.++ (_ re.reference 2) (str.to_re "/")))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)