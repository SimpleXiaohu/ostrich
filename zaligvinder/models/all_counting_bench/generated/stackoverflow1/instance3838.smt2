;test regex split(trim(regexp_replace('NOV2 WAA UW FOO DISPLAY_W2100008/ SOMETHING DISPLAY W2100106','.*?([A-Z]\\d{7})',' $1')),' ')[1]
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "s") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (re.++ (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "m") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "p") (re.++ (str.to_re "_") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (re.++ (re.++ (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "N") (re.++ (str.to_re "O") (re.++ (str.to_re "V") (re.++ (str.to_re "2") (re.++ (str.to_re " ") (re.++ (str.to_re "W") (re.++ (str.to_re "A") (re.++ (str.to_re "A") (re.++ (str.to_re " ") (re.++ (str.to_re "U") (re.++ (str.to_re "W") (re.++ (str.to_re " ") (re.++ (str.to_re "F") (re.++ (str.to_re "O") (re.++ (str.to_re "O") (re.++ (str.to_re " ") (re.++ (str.to_re "D") (re.++ (str.to_re "I") (re.++ (str.to_re "S") (re.++ (str.to_re "P") (re.++ (str.to_re "L") (re.++ (str.to_re "A") (re.++ (str.to_re "Y") (re.++ (str.to_re "_") (re.++ (str.to_re "W") (re.++ (str.to_re "2100008") (re.++ (str.to_re "/") (re.++ (str.to_re " ") (re.++ (str.to_re "S") (re.++ (str.to_re "O") (re.++ (str.to_re "M") (re.++ (str.to_re "E") (re.++ (str.to_re "T") (re.++ (str.to_re "H") (re.++ (str.to_re "I") (re.++ (str.to_re "N") (re.++ (str.to_re "G") (re.++ (str.to_re " ") (re.++ (str.to_re "D") (re.++ (str.to_re "I") (re.++ (str.to_re "S") (re.++ (str.to_re "P") (re.++ (str.to_re "L") (re.++ (str.to_re "A") (re.++ (str.to_re "Y") (re.++ (str.to_re " ") (re.++ (str.to_re "W") (re.++ (str.to_re "2100106") (str.to_re "\u{27}")))))))))))))))))))))))))))))))))))))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re "\u{27}") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.++ (re.range "A" "Z") (re.++ (str.to_re "\\") ((_ re.loop 7 7) (str.to_re "d")))) (str.to_re "\u{27}")))))) (re.++ (str.to_re ",") (re.++ (str.to_re "\u{27}") (str.to_re " ")))) (re.++ (str.to_re "") (re.++ (str.to_re "1") (str.to_re "\u{27}")))))))))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re " ") (str.to_re "\u{27}"))))) (str.to_re "1")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)