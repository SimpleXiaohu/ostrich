;test regex file=prxchange('s/^.*\d{2}(\w+\.zip).*$/$1/',-1, line);
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "=") (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "x") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (re.++ (re.++ (re.++ (re.++ (re.++ (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "s") (str.to_re "/"))) (re.++ (str.to_re "") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (str.to_re ".") (re.++ (str.to_re "z") (re.++ (str.to_re "i") (str.to_re "p"))))) (re.* (re.diff re.allchar (str.to_re "\n")))))))) (re.++ (str.to_re "") (str.to_re "/"))) (re.++ (str.to_re "") (re.++ (str.to_re "1") (re.++ (str.to_re "/") (str.to_re "\u{27}"))))) (re.++ (str.to_re ",") (re.++ (str.to_re "-") (str.to_re "1")))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "l") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (str.to_re "e"))))))) (str.to_re ";"))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)