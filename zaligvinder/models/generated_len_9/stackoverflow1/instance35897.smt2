;test regex sed -r 's/^([^:]*:){2}([^:]*):(.*):.*$/\2 \3/' file
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "r") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "s") (str.to_re "/")))))))))) (re.++ (str.to_re "") (re.++ ((_ re.loop 2 2) (re.++ (re.* (re.diff re.allchar (str.to_re ":"))) (str.to_re ":"))) (re.++ (re.* (re.diff re.allchar (str.to_re ":"))) (re.++ (str.to_re ":") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re ":") (re.* (re.diff re.allchar (str.to_re "\n")))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "/") (re.++ (_ re.reference 2) (re.++ (str.to_re " ") (re.++ (_ re.reference 3) (re.++ (str.to_re "/") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re " ") (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (str.to_re "e")))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)