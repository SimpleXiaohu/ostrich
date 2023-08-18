;test regex ^((?:https?|ftp)?(?::\/{2})?[\w.\/]+(?::\d{1,4})?\/?[?\w_#\/.]+)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.opt (re.union (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.opt (str.to_re "s")))))) (re.++ (str.to_re "f") (re.++ (str.to_re "t") (str.to_re "p"))))) (re.++ (re.opt (re.++ (str.to_re ":") ((_ re.loop 2 2) (str.to_re "/")))) (re.++ (re.+ (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (re.union (str.to_re ".") (str.to_re "/")))) (re.++ (re.opt (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.range "0" "9")))) (re.++ (re.opt (str.to_re "/")) (re.+ (re.union (str.to_re "?") (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (re.union (str.to_re "_") (re.union (str.to_re "#") (re.union (str.to_re "/") (str.to_re ".")))))))))))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)