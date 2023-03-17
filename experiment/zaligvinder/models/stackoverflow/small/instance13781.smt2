;test regex /(https:[/][/]|http:[/][/]|www.)[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,3}(:[a-zA-Z0-9]*)?\/?([a-zA-Z0-9\-\._\?\,\'/\\\+&amp;%\$#\=~])*$/.test("www.google.com");
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "/") (re.++ (re.union (re.union (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.++ (str.to_re "s") (re.++ (str.to_re ":") (re.++ (str.to_re "/") (str.to_re "/")))))))) (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.++ (str.to_re ":") (re.++ (str.to_re "/") (str.to_re "/")))))))) (re.++ (str.to_re "w") (re.++ (str.to_re "w") (re.++ (str.to_re "w") (re.diff re.allchar (str.to_re "\n")))))) (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (str.to_re ".")))))) (re.++ (str.to_re ".") (re.++ ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.opt (re.++ (str.to_re ":") (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))))) (re.++ (re.opt (str.to_re "/")) (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re "_") (re.union (str.to_re "?") (re.union (str.to_re ",") (re.union (str.to_re "\u{27}") (re.union (str.to_re "/") (re.union (str.to_re "\\") (re.union (str.to_re "+") (re.union (str.to_re "&") (re.union (str.to_re "a") (re.union (str.to_re "m") (re.union (str.to_re "p") (re.union (str.to_re ";") (re.union (str.to_re "%") (re.union (str.to_re "$") (re.union (str.to_re "#") (re.union (str.to_re "=") (str.to_re "~")))))))))))))))))))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "/") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "w") (re.++ (str.to_re "w") (re.++ (str.to_re "w") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "g") (re.++ (str.to_re "o") (re.++ (str.to_re "o") (re.++ (str.to_re "g") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "m") (str.to_re "\u{22}")))))))))))))))) (str.to_re ";"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)