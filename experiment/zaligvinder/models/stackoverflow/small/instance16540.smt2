;test regex SELECT regexp_extract(col_value, '^(([^\;]*)){1}', 1) VARIABLE,regexp_extract(col_value, '(([^\;]*)\;){2}', 2) TipoType from temp;
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "S") (re.++ (str.to_re "E") (re.++ (str.to_re "L") (re.++ (str.to_re "E") (re.++ (str.to_re "C") (re.++ (str.to_re "T") (re.++ (str.to_re " ") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "p") (re.++ (str.to_re "_") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (re.++ (re.++ (re.++ (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "l") (re.++ (str.to_re "_") (re.++ (str.to_re "v") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re "u") (str.to_re "e"))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (str.to_re "\u{27}")))) (re.++ (str.to_re "") (re.++ ((_ re.loop 1 1) (re.* (re.diff re.allchar (str.to_re ";")))) (str.to_re "\u{27}")))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (str.to_re "1")))) (re.++ (str.to_re " ") (re.++ (str.to_re "V") (re.++ (str.to_re "A") (re.++ (str.to_re "R") (re.++ (str.to_re "I") (re.++ (str.to_re "A") (re.++ (str.to_re "B") (re.++ (str.to_re "L") (str.to_re "E"))))))))))))))))))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "p") (re.++ (str.to_re "_") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (re.++ (re.++ (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "l") (re.++ (str.to_re "_") (re.++ (str.to_re "v") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re "u") (str.to_re "e"))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ ((_ re.loop 2 2) (re.++ (re.* (re.diff re.allchar (str.to_re ";"))) (str.to_re ";"))) (str.to_re "\u{27}")))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (str.to_re "2")))) (re.++ (str.to_re " ") (re.++ (str.to_re "T") (re.++ (str.to_re "i") (re.++ (str.to_re "p") (re.++ (str.to_re "o") (re.++ (str.to_re "T") (re.++ (str.to_re "y") (re.++ (str.to_re "p") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "f") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "m") (re.++ (str.to_re " ") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "m") (re.++ (str.to_re "p") (str.to_re ";")))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)