;test regex ^mylog\.2015-12-04\-\d{2}\:\d{2}\:\d{2}\.gc\.log\.gz$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "m") (re.++ (str.to_re "y") (re.++ (str.to_re "l") (re.++ (str.to_re "o") (re.++ (str.to_re "g") (re.++ (str.to_re ".") (re.++ (str.to_re "2015") (re.++ (str.to_re "-") (re.++ (str.to_re "12") (re.++ (str.to_re "-") (re.++ (str.to_re "04") (re.++ (str.to_re "-") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ (str.to_re "g") (re.++ (str.to_re "c") (re.++ (str.to_re ".") (re.++ (str.to_re "l") (re.++ (str.to_re "o") (re.++ (str.to_re "g") (re.++ (str.to_re ".") (re.++ (str.to_re "g") (str.to_re "z")))))))))))))))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)