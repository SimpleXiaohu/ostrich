;test regex (^(http|https|ftp)\://[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,3}(:[a-zA-Z0-9]*)?/?([a-zA-Z0-9\-\._\?\,\'/\\\+&amp;%\$#\=~])*$)(,(true|false))(,(.*))
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.union (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (str.to_re "p")))) (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (str.to_re "s")))))) (re.++ (str.to_re "f") (re.++ (str.to_re "t") (str.to_re "p")))) (re.++ (str.to_re ":") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (str.to_re ".")))))) (re.++ (str.to_re ".") (re.++ ((_ re.loop 2 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.opt (re.++ (str.to_re ":") (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))))) (re.++ (re.opt (str.to_re "/")) (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re "_") (re.union (str.to_re "?") (re.union (str.to_re ",") (re.union (str.to_re "\u{27}") (re.union (str.to_re "/") (re.union (str.to_re "\\") (re.union (str.to_re "+") (re.union (str.to_re "&") (re.union (str.to_re "a") (re.union (str.to_re "m") (re.union (str.to_re "p") (re.union (str.to_re ";") (re.union (str.to_re "%") (re.union (str.to_re "$") (re.union (str.to_re "#") (re.union (str.to_re "=") (str.to_re "~"))))))))))))))))))))))))))))))))) (str.to_re "")) (re.++ (re.++ (str.to_re ",") (re.union (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "u") (str.to_re "e")))) (re.++ (str.to_re "f") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re "s") (str.to_re "e"))))))) (re.++ (str.to_re ",") (re.* (re.diff re.allchar (str.to_re "\n"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)