;test regex /(([A-Za-z]{3,9})://)?([-;:&=\+\$,\w]+@{1})?(([-A-Za-z0-9]+\.)+[A-Za-z]{2,3})(:\d+)?((/[-\+~%/\.\w]+)?/?([&?][-\+=&;%@\.\w]+)?(#[\w]+)?)?/g
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "/") (re.++ (re.opt (re.++ ((_ re.loop 3 9) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.++ (str.to_re ":") (re.++ (str.to_re "/") (str.to_re "/"))))) (re.++ (re.opt (re.++ (re.+ (re.union (str.to_re "-") (re.union (str.to_re ";") (re.union (str.to_re ":") (re.union (str.to_re "&") (re.union (str.to_re "=") (re.union (str.to_re "+") (re.union (str.to_re "$") (re.union (str.to_re ",") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))))))))))) ((_ re.loop 1 1) (str.to_re "@")))) (re.++ (re.++ (re.+ (re.++ (re.+ (re.union (str.to_re "-") (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.range "0" "9"))))) (str.to_re "."))) ((_ re.loop 2 3) (re.union (re.range "A" "Z") (re.range "a" "z")))) (re.++ (re.opt (re.++ (str.to_re ":") (re.+ (re.range "0" "9")))) (re.++ (re.opt (re.++ (re.opt (re.++ (str.to_re "/") (re.+ (re.union (str.to_re "-") (re.union (str.to_re "+") (re.union (str.to_re "~") (re.union (str.to_re "%") (re.union (str.to_re "/") (re.union (str.to_re ".") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))))))))))) (re.++ (re.opt (str.to_re "/")) (re.++ (re.opt (re.++ (re.union (str.to_re "&") (str.to_re "?")) (re.+ (re.union (str.to_re "-") (re.union (str.to_re "+") (re.union (str.to_re "=") (re.union (str.to_re "&") (re.union (str.to_re ";") (re.union (str.to_re "%") (re.union (str.to_re "@") (re.union (str.to_re ".") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))))))))))))) (re.opt (re.++ (str.to_re "#") (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))))))))) (re.++ (str.to_re "/") (str.to_re "g"))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)