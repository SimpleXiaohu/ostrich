;test regex /^(https?|ftp):\/\/([0-9A-Za-z][0-9A-Za-z-]{0,61}[0-9A-Za-z]\.)+(<TLD list>)/g
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "/") (re.++ (str.to_re "") (re.++ (re.union (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.opt (str.to_re "s")))))) (re.++ (str.to_re "f") (re.++ (str.to_re "t") (str.to_re "p")))) (re.++ (str.to_re ":") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (re.+ (re.++ (re.union (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.++ ((_ re.loop 0 61) (re.union (re.range "0" "9") (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (str.to_re "-"))))) (re.++ (re.union (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to_re "."))))) (re.++ (re.++ (str.to_re "<") (re.++ (str.to_re "T") (re.++ (str.to_re "L") (re.++ (str.to_re "D") (re.++ (str.to_re " ") (re.++ (str.to_re "l") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (str.to_re ">")))))))))) (re.++ (str.to_re "/") (str.to_re "g"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)