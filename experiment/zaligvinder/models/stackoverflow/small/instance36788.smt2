;test regex psql -U postgres -c "SELECT DISTINCT substring(proj_base, '[0-9]{4}_[0-9]{2}_[0-9]{2}') AS "TREE" FROM testcase ORDER BY TREE DESC LIMIT 30" $proj
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "p") (re.++ (str.to_re "s") (re.++ (str.to_re "q") (re.++ (str.to_re "l") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "U") (re.++ (str.to_re " ") (re.++ (str.to_re "p") (re.++ (str.to_re "o") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "c") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "S") (re.++ (str.to_re "E") (re.++ (str.to_re "L") (re.++ (str.to_re "E") (re.++ (str.to_re "C") (re.++ (str.to_re "T") (re.++ (str.to_re " ") (re.++ (str.to_re "D") (re.++ (str.to_re "I") (re.++ (str.to_re "S") (re.++ (str.to_re "T") (re.++ (str.to_re "I") (re.++ (str.to_re "N") (re.++ (str.to_re "C") (re.++ (str.to_re "T") (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "u") (re.++ (str.to_re "b") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (re.++ (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "j") (re.++ (str.to_re "_") (re.++ (str.to_re "b") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (str.to_re "e"))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re "_") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re "_") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{27}")))))))))) (re.++ (str.to_re " ") (re.++ (str.to_re "A") (re.++ (str.to_re "S") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "T") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re "E") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re " ") (re.++ (str.to_re "F") (re.++ (str.to_re "R") (re.++ (str.to_re "O") (re.++ (str.to_re "M") (re.++ (str.to_re " ") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "c") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "O") (re.++ (str.to_re "R") (re.++ (str.to_re "D") (re.++ (str.to_re "E") (re.++ (str.to_re "R") (re.++ (str.to_re " ") (re.++ (str.to_re "B") (re.++ (str.to_re "Y") (re.++ (str.to_re " ") (re.++ (str.to_re "T") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re "E") (re.++ (str.to_re " ") (re.++ (str.to_re "D") (re.++ (str.to_re "E") (re.++ (str.to_re "S") (re.++ (str.to_re "C") (re.++ (str.to_re " ") (re.++ (str.to_re "L") (re.++ (str.to_re "I") (re.++ (str.to_re "M") (re.++ (str.to_re "I") (re.++ (str.to_re "T") (re.++ (str.to_re " ") (re.++ (str.to_re "30") (re.++ (str.to_re "\u{22}") (str.to_re " ")))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (str.to_re "j"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)