;test regex select '55555' !~* '^\d{5}$';
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "55555") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re " ") (re.++ (str.to_re "!") (re.++ (re.* (str.to_re "~")) (re.++ (str.to_re " ") (str.to_re "\u{27}"))))))))))))))) (re.++ (str.to_re "") ((_ re.loop 5 5) (re.range "0" "9")))) (re.++ (str.to_re "") (re.++ (str.to_re "\u{27}") (str.to_re ";"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)