;test regex /\[[^\]\n]+\](?:\([^\)\n]+\)|\[[^\]\n]+\])|(?:\/\w+\/|.:\\|\w*:\/\/|\.+\/[./\w\d]+|(?:\w+\.\w+){2,})[./\w\d:/?#\[\]@!$&'()*+,;=\-~%]*/gi
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "/") (re.++ (str.to_re "[") (re.++ (re.+ (re.inter (re.diff re.allchar (str.to_re "]")) (re.diff re.allchar (str.to_re "\u{0a}")))) (re.++ (str.to_re "]") (re.union (re.++ (str.to_re "(") (re.++ (re.+ (re.inter (re.diff re.allchar (str.to_re ")")) (re.diff re.allchar (str.to_re "\u{0a}")))) (str.to_re ")"))) (re.++ (str.to_re "[") (re.++ (re.+ (re.inter (re.diff re.allchar (str.to_re "]")) (re.diff re.allchar (str.to_re "\u{0a}")))) (str.to_re "]")))))))) (re.++ (re.union (re.union (re.union (re.union (re.++ (str.to_re "/") (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (str.to_re "/"))) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re ":") (str.to_re "\\")))) (re.++ (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (str.to_re ":") (re.++ (str.to_re "/") (str.to_re "/"))))) (re.++ (re.+ (str.to_re ".")) (re.++ (str.to_re "/") (re.+ (re.union (str.to_re ".") (re.union (str.to_re "/") (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (re.range "0" "9")))))))) (re.++ (re.* (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (str.to_re ".") (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))))) ((_ re.loop 2 2) (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (str.to_re ".") (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))))))) (re.++ (re.* (re.union (str.to_re ".") (re.union (str.to_re "/") (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (re.union (re.range "0" "9") (re.union (str.to_re ":") (re.union (str.to_re "/") (re.union (str.to_re "?") (re.union (str.to_re "#") (re.union (str.to_re "[") (re.union (str.to_re "]") (re.union (str.to_re "@") (re.union (str.to_re "!") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "\u{27}") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "*") (re.union (str.to_re "+") (re.union (str.to_re ",") (re.union (str.to_re ";") (re.union (str.to_re "=") (re.union (str.to_re "-") (re.union (str.to_re "~") (str.to_re "%")))))))))))))))))))))))))) (re.++ (str.to_re "/") (re.++ (str.to_re "g") (str.to_re "i"))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)