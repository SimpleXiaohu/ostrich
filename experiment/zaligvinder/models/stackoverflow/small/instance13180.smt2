;test regex "this is a test123".replace(/.*test(\d{1,3}).*/, "$1");  // "123"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re " ") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "123") (re.++ (str.to_re "\u{22}") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (re.++ (re.++ (re.++ (str.to_re "/") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (str.to_re "/"))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (str.to_re "\u{22}")))) (re.++ (str.to_re "") (re.++ (str.to_re "1") (str.to_re "\u{22}")))) (re.++ (str.to_re ";") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "123") (str.to_re "\u{22}")))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)