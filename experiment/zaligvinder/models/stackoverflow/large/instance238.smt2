;test regex RegExp = /^((([a-z]|[0-9]|!|#|$|%|&|'|\+|\-|\/|=|\?|\^|_|`|\{|\||\}|~)+(\.([a-z]|[0-9]|!|#|$|%|&|'|\+|\-|\/|=|\?|\^|_|`|\{|\||\}|~)+)*)@((((([a-z]|[0-9])([a-z]|[0-9]|\-){0,61}([a-z]|[0-9])\.))*([a-z]|[0-9])([a-z]|[0-9]|\-){0,61}([a-z]|[0-9])\.)[\w]{2,4}|(((([0-9]){1,3}\.){3}([0-9]){1,3}))|(\[((([0-9]){1,3}\.){3}([0-9]){1,3})\])))$/
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "E") (re.++ (str.to_re "x") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (str.to_re "/")))))))))) (re.++ (str.to_re "") (re.++ (re.++ (re.+ (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.range "a" "z") (re.range "0" "9")) (str.to_re "!")) (str.to_re "#")) (str.to_re "")) (str.to_re "%")) (str.to_re "&")) (str.to_re "\u{27}")) (str.to_re "+")) (str.to_re "-")) (str.to_re "/")) (str.to_re "=")) (str.to_re "?")) (str.to_re "^")) (str.to_re "_")) (str.to_re "`")) (str.to_re "{")) (str.to_re "|")) (str.to_re "}")) (str.to_re "~"))) (re.* (re.++ (str.to_re ".") (re.+ (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.range "a" "z") (re.range "0" "9")) (str.to_re "!")) (str.to_re "#")) (str.to_re "")) (str.to_re "%")) (str.to_re "&")) (str.to_re "\u{27}")) (str.to_re "+")) (str.to_re "-")) (str.to_re "/")) (str.to_re "=")) (str.to_re "?")) (str.to_re "^")) (str.to_re "_")) (str.to_re "`")) (str.to_re "{")) (str.to_re "|")) (str.to_re "}")) (str.to_re "~")))))) (re.++ (str.to_re "@") (re.union (re.union (re.++ (re.++ (re.* (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) (re.++ ((_ re.loop 0 61) (re.union (re.union (re.range "a" "z") (re.range "0" "9")) (str.to_re "-"))) (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) (str.to_re "."))))) (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) (re.++ ((_ re.loop 0 61) (re.union (re.union (re.range "a" "z") (re.range "0" "9")) (str.to_re "-"))) (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) (str.to_re "."))))) ((_ re.loop 2 4) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))) (re.++ ((_ re.loop 3 3) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "."))) ((_ re.loop 1 3) (re.range "0" "9")))) (re.++ (str.to_re "[") (re.++ (re.++ ((_ re.loop 3 3) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "."))) ((_ re.loop 1 3) (re.range "0" "9"))) (str.to_re "]")))))))) (re.++ (str.to_re "") (str.to_re "/")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)