;test regex sub("((?:[^H]*H){2}[^H]*)H", "\\1.","AHBHCHEFHDGA")
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "s") (re.++ (str.to_re "u") (re.++ (str.to_re "b") (re.++ (re.++ (re.++ (str.to_re "\u{22}") (re.++ (re.++ ((_ re.loop 2 2) (re.++ (re.* (re.diff re.allchar (str.to_re "H"))) (str.to_re "H"))) (re.* (re.diff re.allchar (str.to_re "H")))) (re.++ (str.to_re "H") (str.to_re "\u{22}")))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "\\") (re.++ (str.to_re "1") (re.++ (re.diff re.allchar (str.to_re "\n")) (str.to_re "\u{22}")))))))) (re.++ (str.to_re ",") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "A") (re.++ (str.to_re "H") (re.++ (str.to_re "B") (re.++ (str.to_re "H") (re.++ (str.to_re "C") (re.++ (str.to_re "H") (re.++ (str.to_re "E") (re.++ (str.to_re "F") (re.++ (str.to_re "H") (re.++ (str.to_re "D") (re.++ (str.to_re "G") (re.++ (str.to_re "A") (str.to_re "\u{22}")))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)