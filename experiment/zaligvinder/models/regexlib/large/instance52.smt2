;test regex ^jdbc:db2://((?:(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?).){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?))|(?:(?:(?:(?:[A-Z|a-z])(?:[\w|-]){0,61}(?:[\w]?[.]))*)(?:(?:[A-Z|a-z])(?:[\w|-]){0,61}(?:[\w]?)))):([0-9]{1,5})/([0-9|A-Z|a-z|_|#|$]{1,16})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "j") (re.++ (str.to_re "d") (re.++ (str.to_re "b") (re.++ (str.to_re "c") (re.++ (str.to_re ":") (re.++ (str.to_re "d") (re.++ (str.to_re "b") (re.++ (str.to_re "2") (re.++ (str.to_re ":") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (re.union (re.++ ((_ re.loop 3 3) (re.++ (re.union (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (re.opt (str.to_re "01")) (re.++ (re.range "0" "9") (re.opt (re.range "0" "9"))))) (re.diff re.allchar (str.to_re "\n")))) (re.union (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (re.opt (str.to_re "01")) (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.++ (re.* (re.++ (re.union (re.range "A" "Z") (re.union (str.to_re "|") (re.range "a" "z"))) (re.++ ((_ re.loop 0 61) (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (re.union (str.to_re "|") (str.to_re "-")))) (re.++ (re.opt (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (str.to_re "."))))) (re.++ (re.union (re.range "A" "Z") (re.union (str.to_re "|") (re.range "a" "z"))) (re.++ ((_ re.loop 0 61) (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (re.union (str.to_re "|") (str.to_re "-")))) (re.opt (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))))))) (re.++ (str.to_re ":") (re.++ ((_ re.loop 1 5) (re.range "0" "9")) (re.++ (str.to_re "/") ((_ re.loop 1 16) (re.union (re.range "0" "9") (re.union (str.to_re "|") (re.union (re.range "A" "Z") (re.union (str.to_re "|") (re.union (re.range "a" "z") (re.union (str.to_re "|") (re.union (str.to_re "_") (re.union (str.to_re "|") (re.union (str.to_re "#") (re.union (str.to_re "|") (str.to_re "$")))))))))))))))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)