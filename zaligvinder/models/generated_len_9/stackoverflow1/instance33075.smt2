;test regex $str =~ s/([a-z]+)\d{5}([a-z]+)/\1\2/i;
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re "~") (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (re.+ (re.range "a" "z")) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (re.+ (re.range "a" "z")) (re.++ (str.to_re "/") (re.++ (_ re.reference 1) (re.++ (_ re.reference 2) (re.++ (str.to_re "/") (re.++ (str.to_re "i") (str.to_re ";")))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)