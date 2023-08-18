;test regex sed -r 's/^.{3}(.{3}).{3}(.{6}).{5}(.{4}).*$/\1 \2 \3/g'
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "r") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "s") (str.to_re "/")))))))))) (re.++ (str.to_re "") (re.++ ((_ re.loop 3 3) (re.diff re.allchar (str.to_re "\n"))) (re.++ ((_ re.loop 3 3) (re.diff re.allchar (str.to_re "\n"))) (re.++ ((_ re.loop 3 3) (re.diff re.allchar (str.to_re "\n"))) (re.++ ((_ re.loop 6 6) (re.diff re.allchar (str.to_re "\n"))) (re.++ ((_ re.loop 5 5) (re.diff re.allchar (str.to_re "\n"))) (re.++ ((_ re.loop 4 4) (re.diff re.allchar (str.to_re "\n"))) (re.* (re.diff re.allchar (str.to_re "\n"))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "/") (re.++ (_ re.reference 1) (re.++ (str.to_re " ") (re.++ (_ re.reference 2) (re.++ (str.to_re " ") (re.++ (_ re.reference 3) (re.++ (str.to_re "/") (re.++ (str.to_re "g") (str.to_re "\u{27}")))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)