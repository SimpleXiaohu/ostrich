;test regex comagic_visitor[^;]+(\d{6})\;
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "g") (re.++ (str.to_re "i") (re.++ (str.to_re "c") (re.++ (str.to_re "_") (re.++ (str.to_re "v") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (re.+ (re.diff re.allchar (str.to_re ";"))) (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re ";"))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)