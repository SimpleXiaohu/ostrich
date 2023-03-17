;test regex const string pattern = @"((([A-Za-z]{3,9}:(?:\/\/)?)(?:[-;:&=\+\$,\w]+@)?[A-Za-z0-9.-]+|(?:www.|[-;:&=\+\$,\w]+@)[A-Za-z0-9.-]+)((?:\/[\+~%\/.\w-_]*)?\??(?:[-\+=&;%@.\w_]*)#?(?:[.\!\/\\w]*))?)";
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re " ") (re.++ (str.to_re "p") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "n") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (re.++ (str.to_re "@") (re.++ (str.to_re "\u{22}") (re.++ (re.++ (re.union (re.++ (re.++ ((_ re.loop 3 9) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.++ (str.to_re ":") (re.opt (re.++ (str.to_re "/") (str.to_re "/"))))) (re.++ (re.opt (re.++ (re.+ (re.union (str.to_re "-") (re.union (str.to_re ";") (re.union (str.to_re ":") (re.union (str.to_re "&") (re.union (str.to_re "=") (re.union (str.to_re "+") (re.union (str.to_re "$") (re.union (str.to_re ",") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))))))))))) (str.to_re "@"))) (re.+ (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re ".") (str.to_re "-")))))))) (re.++ (re.union (re.++ (str.to_re "w") (re.++ (str.to_re "w") (re.++ (str.to_re "w") (re.diff re.allchar (str.to_re "\n"))))) (re.++ (re.+ (re.union (str.to_re "-") (re.union (str.to_re ";") (re.union (str.to_re ":") (re.union (str.to_re "&") (re.union (str.to_re "=") (re.union (str.to_re "+") (re.union (str.to_re "$") (re.union (str.to_re ",") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))))))))))) (str.to_re "@"))) (re.+ (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re ".") (str.to_re "-")))))))) (re.opt (re.++ (re.opt (re.++ (str.to_re "/") (re.* (re.union (str.to_re "+") (re.union (str.to_re "~") (re.union (str.to_re "%") (re.union (str.to_re "/") (re.union (str.to_re ".") (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (re.union (str.to_re "-") (str.to_re "_"))))))))))) (re.++ (re.opt (str.to_re "?")) (re.++ (re.* (re.union (str.to_re "-") (re.union (str.to_re "+") (re.union (str.to_re "=") (re.union (str.to_re "&") (re.union (str.to_re ";") (re.union (str.to_re "%") (re.union (str.to_re "@") (re.union (str.to_re ".") (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (str.to_re "_"))))))))))) (re.++ (re.opt (str.to_re "#")) (re.* (re.union (str.to_re ".") (re.union (str.to_re "!") (re.union (str.to_re "/") (re.union (str.to_re "\\") (str.to_re "w")))))))))))) (re.++ (str.to_re "\u{22}") (str.to_re ";"))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)