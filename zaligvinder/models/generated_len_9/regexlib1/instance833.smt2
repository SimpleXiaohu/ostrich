;test regex ^(((\.\.){1}/)*|(/){1})?(([a-zA-Z0-9]*)/)*([a-zA-Z0-9]*)+([.jpg]|[.gif])+$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.opt (re.union (re.* (re.++ ((_ re.loop 1 1) (re.++ (str.to_re ".") (str.to_re "."))) (str.to_re "/"))) ((_ re.loop 1 1) (str.to_re "/")))) (re.++ (re.* (re.++ (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))) (str.to_re "/"))) (re.++ (re.+ (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9"))))) (re.+ (re.union (re.union (str.to_re ".") (re.union (str.to_re "j") (re.union (str.to_re "p") (str.to_re "g")))) (re.union (str.to_re ".") (re.union (str.to_re "g") (re.union (str.to_re "i") (str.to_re "f")))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " &
(assert (not (str.in_re X (re.++ re.all (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{26}")) re.all))))
(assert (< 9 (str.len X)))
(check-sat)
(get-model)