;test regex select regexp_extract(col1, '1234\\|([^|]{0,})\\|[^|]{0,}\\|ABC\\|true', 1) col from table1;
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "p") (re.++ (str.to_re "_") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (re.union (re.union (re.union (re.union (re.++ (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "l") (str.to_re "1")))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "1234") (str.to_re "\\")))))) (re.++ (re.++ (re.* (re.diff re.allchar (str.to_re "|"))) ((_ re.loop 0 0) (re.diff re.allchar (str.to_re "|")))) (str.to_re "\\"))) (re.++ (re.++ (re.* (re.diff re.allchar (str.to_re "|"))) ((_ re.loop 0 0) (re.diff re.allchar (str.to_re "|")))) (str.to_re "\\"))) (re.++ (str.to_re "A") (re.++ (str.to_re "B") (re.++ (str.to_re "C") (str.to_re "\\"))))) (re.++ (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "u") (re.++ (str.to_re "e") (str.to_re "\u{27}"))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (str.to_re "1"))))) (re.++ (str.to_re " ") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "l") (re.++ (str.to_re " ") (re.++ (str.to_re "f") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "m") (re.++ (str.to_re " ") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "b") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "1") (str.to_re ";")))))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)