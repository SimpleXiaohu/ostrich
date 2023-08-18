;test regex sed -r 's/^(.*), *(.*) (..), ([0-9]{5})/\1|\2|\3|\4/'
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.++ (re.++ (re.++ (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "r") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "s") (str.to_re "/")))))))))) (re.++ (str.to_re "") (re.* (re.diff re.allchar (str.to_re "\n"))))) (re.++ (str.to_re ",") (re.++ (re.* (str.to_re " ")) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re " ") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.diff re.allchar (str.to_re "\n")))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (str.to_re "/") (_ re.reference 1)))))) (_ re.reference 2)) (_ re.reference 3)) (re.++ (_ re.reference 4) (re.++ (str.to_re "/") (str.to_re "\u{27}"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)