;test regex ^((www\.)?(\*\.)?[A-Za-z0-9]+([\-\.]{1,2}[A-Za-z0-9]+)*\.[A-Za-z]{2,40}(:[0-9]{1,40})?(\/.*)?)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.opt (re.++ (str.to_re "w") (re.++ (str.to_re "w") (re.++ (str.to_re "w") (str.to_re "."))))) (re.++ (re.opt (re.++ (str.to_re "*") (str.to_re "."))) (re.++ (re.+ (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.range "0" "9")))) (re.++ (re.* (re.++ ((_ re.loop 1 2) (re.union (str.to_re "-") (str.to_re "."))) (re.+ (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.range "0" "9")))))) (re.++ (str.to_re ".") (re.++ ((_ re.loop 2 40) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.++ (re.opt (re.++ (str.to_re ":") ((_ re.loop 1 40) (re.range "0" "9")))) (re.opt (re.++ (str.to_re "/") (re.* (re.diff re.allchar (str.to_re "\n"))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 10 (str.len X)))
(check-sat)
(get-model)