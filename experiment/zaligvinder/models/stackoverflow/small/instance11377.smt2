;test regex SELECT REPLACE('<strong>100</strong><b>.00 GB', '%^(^-?\d*\.{0,1}\d+$)%', '');
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "S") (re.++ (str.to_re "E") (re.++ (str.to_re "L") (re.++ (str.to_re "E") (re.++ (str.to_re "C") (re.++ (str.to_re "T") (re.++ (str.to_re " ") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re "P") (re.++ (str.to_re "L") (re.++ (str.to_re "A") (re.++ (str.to_re "C") (re.++ (str.to_re "E") (re.++ (re.++ (re.++ (re.++ (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "<") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re ">") (re.++ (str.to_re "100") (re.++ (str.to_re "<") (re.++ (str.to_re "/") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re ">") (re.++ (str.to_re "<") (re.++ (str.to_re "b") (re.++ (str.to_re ">") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "00") (re.++ (str.to_re " ") (re.++ (str.to_re "G") (re.++ (str.to_re "B") (str.to_re "\u{27}")))))))))))))))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (str.to_re "%"))))) (re.++ (str.to_re "") (re.++ (re.++ (re.++ (str.to_re "") (re.++ (re.opt (str.to_re "-")) (re.++ (re.* (re.range "0" "9")) (re.++ ((_ re.loop 0 1) (str.to_re ".")) (re.+ (re.range "0" "9")))))) (str.to_re "")) (re.++ (str.to_re "%") (str.to_re "\u{27}"))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (str.to_re "\u{27}"))))) (str.to_re ";"))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)