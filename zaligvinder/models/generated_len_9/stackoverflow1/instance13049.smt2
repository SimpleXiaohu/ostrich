;test regex (\d{6})0 (?:\1)1 (?:\1)2 (?:\1)3 (?:\1)4 (?:\1)5 (?:\1)6 (?:\1)7 (?:\1)8 (?:\1)9
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (re.++ (str.to_re "0") (re.++ (str.to_re " ") (re.++ (_ re.reference 1) (re.++ (str.to_re "1") (re.++ (str.to_re " ") (re.++ (_ re.reference 1) (re.++ (str.to_re "2") (re.++ (str.to_re " ") (re.++ (_ re.reference 1) (re.++ (str.to_re "3") (re.++ (str.to_re " ") (re.++ (_ re.reference 1) (re.++ (str.to_re "4") (re.++ (str.to_re " ") (re.++ (_ re.reference 1) (re.++ (str.to_re "5") (re.++ (str.to_re " ") (re.++ (_ re.reference 1) (re.++ (str.to_re "6") (re.++ (str.to_re " ") (re.++ (_ re.reference 1) (re.++ (str.to_re "7") (re.++ (str.to_re " ") (re.++ (_ re.reference 1) (re.++ (str.to_re "8") (re.++ (str.to_re " ") (re.++ (_ re.reference 1) (str.to_re "9")))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)