;test regex sed -E 's/^.*([Ss][Cc][-_]?[0-9]{4}).*(\.[a-Z]{3})$/\1\2/' infile
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "E") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "s") (str.to_re "/")))))))))) (re.++ (str.to_re "") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.++ (re.union (str.to_re "S") (str.to_re "s")) (re.++ (re.union (str.to_re "C") (str.to_re "c")) (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "_"))) ((_ re.loop 4 4) (re.range "0" "9"))))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re ".") ((_ re.loop 3 3) (re.range "a" "Z")))))))) (re.++ (str.to_re "") (re.++ (str.to_re "/") (re.++ (_ re.reference 1) (re.++ (_ re.reference 2) (re.++ (str.to_re "/") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re " ") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (str.to_re "e"))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)