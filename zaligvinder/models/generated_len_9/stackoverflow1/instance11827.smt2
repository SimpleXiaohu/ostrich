;test regex /^(?:([A-Za-z]+):)?(\/{0,3})([0-9.\-A-Za-z]+)(?::(\d+))?(?:\/([^?#]*))?(?:\?([^#]*))?(?:#(.*))?$/
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "/") (re.++ (str.to_re "") (re.++ (re.opt (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to_re ":"))) (re.++ ((_ re.loop 0 3) (str.to_re "/")) (re.++ (re.+ (re.union (re.range "0" "9") (re.union (str.to_re ".") (re.union (str.to_re "-") (re.union (re.range "A" "Z") (re.range "a" "z")))))) (re.++ (re.opt (re.++ (str.to_re ":") (re.+ (re.range "0" "9")))) (re.++ (re.opt (re.++ (str.to_re "/") (re.* (re.inter (re.diff re.allchar (str.to_re "?")) (re.diff re.allchar (str.to_re "#")))))) (re.++ (re.opt (re.++ (str.to_re "?") (re.* (re.diff re.allchar (str.to_re "#"))))) (re.opt (re.++ (str.to_re "#") (re.* (re.diff re.allchar (str.to_re "\n"))))))))))))) (re.++ (str.to_re "") (str.to_re "/")))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)