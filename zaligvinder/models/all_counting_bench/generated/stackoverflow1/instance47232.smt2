;test regex result := substring(filename, E'Sales_(\\\d{6})')::date;
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "u") (re.++ (str.to_re "l") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re ":") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "u") (re.++ (str.to_re "b") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (re.++ (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (str.to_re "e")))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "E") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "S") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "_") (re.++ (re.++ (str.to_re "\\") ((_ re.loop 6 6) (re.range "0" "9"))) (str.to_re "\u{27}"))))))))))))) (re.++ (str.to_re ":") (re.++ (str.to_re ":") (re.++ (str.to_re "d") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (str.to_re ";")))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)