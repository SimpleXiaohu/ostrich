;test regex (([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]))
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ ((_ re.loop 7 7) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))) (str.to_re ":"))) ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F"))))) (re.++ ((_ re.loop 1 7) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))) (str.to_re ":"))) (str.to_re ":"))) (re.++ ((_ re.loop 1 6) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))) (str.to_re ":"))) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F"))))))) (re.++ ((_ re.loop 1 5) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))) (str.to_re ":"))) ((_ re.loop 1 2) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))))))) (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))) (str.to_re ":"))) ((_ re.loop 1 3) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))))))) (re.++ ((_ re.loop 1 3) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))) (str.to_re ":"))) ((_ re.loop 1 4) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))))))) (re.++ ((_ re.loop 1 2) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))) (str.to_re ":"))) ((_ re.loop 1 5) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))))))) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))) (re.++ (str.to_re ":") ((_ re.loop 1 6) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F"))))))))) (re.++ (str.to_re ":") (re.union ((_ re.loop 1 7) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))))) (str.to_re ":")))) (re.++ (str.to_re "f") (re.++ (str.to_re "e") (re.++ (str.to_re "80") (re.++ (str.to_re ":") (re.++ ((_ re.loop 0 4) (re.++ (str.to_re ":") ((_ re.loop 0 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))))) (re.++ (str.to_re "%") (re.++ (re.* (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.loop 1 1) (re.union (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")))))))))))) (re.++ (str.to_re ":") (re.++ (str.to_re ":") (re.++ ((_ re.loop 0 1) (re.++ (str.to_re "f") (re.++ (str.to_re "f") (re.++ (str.to_re "f") (re.++ (str.to_re "f") (re.++ ((_ re.loop 0 1) (re.++ (str.to_re ":") ((_ re.loop 1 4) (str.to_re "0")))) (str.to_re ":"))))))) (re.++ ((_ re.loop 3 3) (re.++ (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ ((_ re.loop 0 1) (re.union (re.++ (str.to_re "2") (re.range "0" "4")) (re.++ ((_ re.loop 0 1) (str.to_re "1")) (re.range "0" "9")))) (re.range "0" "9"))) (str.to_re "."))) (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ ((_ re.loop 0 1) (re.union (re.++ (str.to_re "2") (re.range "0" "4")) (re.++ ((_ re.loop 0 1) (str.to_re "1")) (re.range "0" "9")))) (re.range "0" "9")))))))) (re.++ ((_ re.loop 1 4) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))) (str.to_re ":"))) (re.++ (str.to_re ":") (re.++ ((_ re.loop 3 3) (re.++ (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ ((_ re.loop 0 1) (re.union (re.++ (str.to_re "2") (re.range "0" "4")) (re.++ ((_ re.loop 0 1) (str.to_re "1")) (re.range "0" "9")))) (re.range "0" "9"))) (str.to_re "."))) (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ ((_ re.loop 0 1) (re.union (re.++ (str.to_re "2") (re.range "0" "4")) (re.++ ((_ re.loop 0 1) (str.to_re "1")) (re.range "0" "9")))) (re.range "0" "9")))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)