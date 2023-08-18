;test regex s/(([^,]+,){3})([^,]+),/\1\3\n/g
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ ((_ re.loop 3 3) (re.++ (re.+ (re.diff re.allchar (str.to_re ","))) (str.to_re ","))) (re.+ (re.diff re.allchar (str.to_re ",")))))) (re.++ (str.to_re ",") (re.++ (str.to_re "/") (re.++ (_ re.reference 1) (re.++ (_ re.reference 3) (re.++ (str.to_re "\u{0a}") (re.++ (str.to_re "/") (str.to_re "g"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)