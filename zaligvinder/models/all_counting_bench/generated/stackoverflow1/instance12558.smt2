;test regex perl -i.bak -p -e 's/\*{10}/ nan /g' RayMet_140529.ray_paths
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "p") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "l") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "i") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "b") (re.++ (str.to_re "a") (re.++ (str.to_re "k") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ ((_ re.loop 10 10) (str.to_re "*")) (re.++ (str.to_re "/") (re.++ (str.to_re " ") (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re " ") (re.++ (str.to_re "/") (re.++ (str.to_re "g") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re " ") (re.++ (str.to_re "R") (re.++ (str.to_re "a") (re.++ (str.to_re "y") (re.++ (str.to_re "M") (re.++ (str.to_re "e") (re.++ (str.to_re "t") (re.++ (str.to_re "_") (re.++ (str.to_re "140529") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "y") (re.++ (str.to_re "_") (re.++ (str.to_re "p") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "h") (str.to_re "s"))))))))))))))))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)