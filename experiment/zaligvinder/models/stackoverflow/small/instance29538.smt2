;test regex select array_to_string(regexp_matches('1503 CENTRE RD CLAYTON VIC 3168 1503, AU', '\m[0-9]{4}\M', 'g'), '')
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "y") (re.++ (str.to_re "_") (re.++ (str.to_re "t") (re.++ (str.to_re "o") (re.++ (str.to_re "_") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "p") (re.++ (str.to_re "_") (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (re.++ (re.++ (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "1503") (re.++ (str.to_re " ") (re.++ (str.to_re "C") (re.++ (str.to_re "E") (re.++ (str.to_re "N") (re.++ (str.to_re "T") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re " ") (re.++ (str.to_re "R") (re.++ (str.to_re "D") (re.++ (str.to_re " ") (re.++ (str.to_re "C") (re.++ (str.to_re "L") (re.++ (str.to_re "A") (re.++ (str.to_re "Y") (re.++ (str.to_re "T") (re.++ (str.to_re "O") (re.++ (str.to_re "N") (re.++ (str.to_re " ") (re.++ (str.to_re "V") (re.++ (str.to_re "I") (re.++ (str.to_re "C") (re.++ (str.to_re " ") (re.++ (str.to_re "3168") (re.++ (str.to_re " ") (str.to_re "1503")))))))))))))))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "A") (re.++ (str.to_re "U") (str.to_re "\u{27}")))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "m") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re "M") (str.to_re "\u{27}")))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "g") (str.to_re "\u{27}")))))))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (str.to_re "\u{27}")))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)