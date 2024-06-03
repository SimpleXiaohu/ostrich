;test regex "(([\w]+:)?//)?(([\d\w]|%[a-fA-F\d]{2,2})+(:([\d\w]|%[a-fA-f\d]{2,2})+)?@)?([\d\w][-\d\w]{0,253}[\d\w]\.)+[\w]{2,4}(:[\d]+)?(/([-+_~.\d\w]|%[a-fA-f\d]{2,2})*)*(\?(&?([-+_~.\d\w]|%[a-fA-f\d]{2,2})=?)*)?(#([-+_~.\d\w]|%[a-fA-f\d]{2,2})*)?"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (re.opt (re.++ (re.opt (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (str.to_re ":"))) (re.++ (str.to_re "/") (str.to_re "/")))) (re.++ (re.opt (re.++ (re.+ (re.union (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "a" "f") (re.union (re.range "A" "F") (re.range "0" "9"))))))) (re.++ (re.opt (re.++ (str.to_re ":") (re.+ (re.union (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "a" "f") (re.union (re.range "A" "f") (re.range "0" "9"))))))))) (str.to_re "@")))) (re.++ (re.+ (re.++ (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ ((_ re.loop 0 253) (re.union (str.to_re "-") (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))))) (re.++ (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (str.to_re "."))))) (re.++ ((_ re.loop 2 4) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (re.opt (re.++ (str.to_re ":") (re.+ (re.range "0" "9")))) (re.++ (re.* (re.++ (str.to_re "/") (re.* (re.union (re.union (str.to_re "-") (re.union (str.to_re "+") (re.union (str.to_re "_") (re.union (str.to_re "~") (re.union (str.to_re ".") (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))))))) (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "a" "f") (re.union (re.range "A" "f") (re.range "0" "9"))))))))) (re.++ (re.opt (re.++ (str.to_re "?") (re.* (re.++ (re.opt (str.to_re "&")) (re.++ (re.union (re.union (str.to_re "-") (re.union (str.to_re "+") (re.union (str.to_re "_") (re.union (str.to_re "~") (re.union (str.to_re ".") (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))))))) (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "a" "f") (re.union (re.range "A" "f") (re.range "0" "9")))))) (re.opt (str.to_re "="))))))) (re.++ (re.opt (re.++ (str.to_re "#") (re.* (re.union (re.union (str.to_re "-") (re.union (str.to_re "+") (re.union (str.to_re "_") (re.union (str.to_re "~") (re.union (str.to_re ".") (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))))))) (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "a" "f") (re.union (re.range "A" "f") (re.range "0" "9"))))))))) (str.to_re "\u{22}"))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)