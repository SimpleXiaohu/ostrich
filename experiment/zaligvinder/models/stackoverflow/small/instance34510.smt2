;test regex select regexp_substr('5-CULVERTS AND UNDERPASSES','[^ ]{2}+') from dual
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "p") (re.++ (str.to_re "_") (re.++ (str.to_re "s") (re.++ (str.to_re "u") (re.++ (str.to_re "b") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (re.++ (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "5") (re.++ (str.to_re "-") (re.++ (str.to_re "C") (re.++ (str.to_re "U") (re.++ (str.to_re "L") (re.++ (str.to_re "V") (re.++ (str.to_re "E") (re.++ (str.to_re "R") (re.++ (str.to_re "T") (re.++ (str.to_re "S") (re.++ (str.to_re " ") (re.++ (str.to_re "A") (re.++ (str.to_re "N") (re.++ (str.to_re "D") (re.++ (str.to_re " ") (re.++ (str.to_re "U") (re.++ (str.to_re "N") (re.++ (str.to_re "D") (re.++ (str.to_re "E") (re.++ (str.to_re "R") (re.++ (str.to_re "P") (re.++ (str.to_re "A") (re.++ (str.to_re "S") (re.++ (str.to_re "S") (re.++ (str.to_re "E") (re.++ (str.to_re "S") (str.to_re "\u{27}")))))))))))))))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re "\u{27}") (re.++ (re.+ ((_ re.loop 2 2) (re.diff re.allchar (str.to_re " ")))) (str.to_re "\u{27}"))))) (re.++ (str.to_re " ") (re.++ (str.to_re "f") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "m") (re.++ (str.to_re " ") (re.++ (str.to_re "d") (re.++ (str.to_re "u") (re.++ (str.to_re "a") (str.to_re "l")))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)