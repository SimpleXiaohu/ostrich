;test regex ^(\w\.?){4}\w$|^\w{0,5}$|\w{31,}|[^a-z0-9.]|^\.|\.$|\.{2,}|\d{8,}
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 4 4) (re.++ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (re.opt (str.to_re ".")))) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))) (str.to_re "")) (re.++ (re.++ (str.to_re "") ((_ re.loop 0 5) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))) (str.to_re ""))) (re.++ (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) ((_ re.loop 31 31) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))))) (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "0" "9")) (re.diff re.allchar (str.to_re "."))))) (re.++ (str.to_re "") (str.to_re "."))) (re.++ (str.to_re ".") (str.to_re ""))) (re.++ (re.* (str.to_re ".")) ((_ re.loop 2 2) (str.to_re ".")))) (re.++ (re.* (re.range "0" "9")) ((_ re.loop 8 8) (re.range "0" "9"))))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)